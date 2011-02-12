$header
	<article>
		<header>
			<h2>
				<img src="images/Froxlor/{$image}" alt="{$title}" />&nbsp;
				{$title}
			</h2>
		</header>

		<if 0 < $ticket_replies_count >
		<section class="fullform bradiusodd">
			$ticket_replies
		</section>
		</if>

		<section class="fullform bradiusodd">
			
			<form action="$filename" method="post" enctype="application/x-www-form-urlencoded">
				<fieldset>
					<legend>Froxlor&nbsp;-&nbsp;{$title}</legend>

					<if $isclosed < 1 >
					<table class="formtable">
						{$ticket_reply_form}
					</table>
					</if>
					<if 0 < $isclosed >
						<a href="$filename?page=tickets&amp;action=reopen&amp;id={$id}&amp;s=$s">{$lng['ticket']['ticket_reopen']}</a>
					</if>

					<p style="display: none;">
						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
						<input type="hidden" name="action" value="$action" />
						<input type="hidden" name="send" value="send" />
						<input type="hidden" name="id" value="$id" />
					</p>
				</fieldset>
			</form>

		</section>
	</article>
$footer
