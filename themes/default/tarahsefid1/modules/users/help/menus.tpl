			<script type="text/javascript">
				window.onload = function(){
					document.getElementsByClassName('selector')[0].onchange = function(){
						var $this_value = this.value;
						window.location = $this_value;
					}
				}
			</script>
			<div class="left static-menu">
				<div class="link-container">
					<div class="desktop">
						<a href="{site_url}users/help/100"{if strpos(getenv('REQUEST_URI'), 'users/help/100') !== false} class="active"{/if}>&#1588;&#1585;&#1575;&#1740;&#1591; &#1608; &#1590;&#1608;&#1575;&#1576;&#1591; &#1593;&#1590;&#1608;&#1740;&#1578;</a>
						<a href="{site_url}users/help/101"{if strpos(getenv('REQUEST_URI'), 'users/help/101') !== false} class="active"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740;</a>
						<a href="{site_url}users/help/102"{if strpos(getenv('REQUEST_URI'), 'users/help/102') !== false} class="active"{/if}>&#1570;&#1605;&#1608;&#1586;&#1588; &#1579;&#1576;&#1578; &#1601;&#1585;&#1605; &#1605;&#1740;&#1705;&#1587;</a>
						<a href="{site_url}users/help/103"{if strpos(getenv('REQUEST_URI'), 'users/help/103') !== false} class="active"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1578;&#1582;&#1578;&#1607; &#1606;&#1585;&#1583;</a>
						<a href="{site_url}users/help/104"{if strpos(getenv('REQUEST_URI'), 'users/help/104') !== false} class="active"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1585;&#1608;&#1604;&#1578;</a>
						<a href="{site_url}users/help/105"{if strpos(getenv('REQUEST_URI'), 'users/help/105') !== false} class="active"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1576;&#1604;&#1705; &#1580;&#1705; (21)</a>
						<a href="{site_url}users/help/106"{if strpos(getenv('REQUEST_URI'), 'users/help/106') !== false} class="active"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1576;&#1575;&#1705;&#1575;&#1585;&#1575;&#1578;</a>
						<a href="{site_url}users/help/107"{if strpos(getenv('REQUEST_URI'), 'users/help/107') !== false} class="active"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1662;&#1575;&#1587;&#1608;&#1585; &#1740;&#1575; 4 &#1576;&#1585;&#1711;</a>
						<a href="{site_url}users/help/108"{if strpos(getenv('REQUEST_URI'), 'users/help/108') !== false} class="active"{/if}>&#1585;&#1608;&#1588; &#1607;&#1575;&#1740; &#1576;&#1585;&#1583;&#1575;&#1588;&#1578; &#1605;&#1608;&#1580;&#1608;&#1583;&#1740;</a>
						<a href="{site_url}users/help/109"{if strpos(getenv('REQUEST_URI'), 'users/help/109') !== false} class="active"{/if}>&#1606;&#1581;&#1608;&#1607; &#1705;&#1575;&#1585; &#1576;&#1575; &#1662;&#1585;&#1601;&#1705;&#1578; &#1605;&#1575;&#1606;&#1740;</a>
						<a href="{site_url}users/help/110"{if strpos(getenv('REQUEST_URI'), 'users/help/110') !== false} class="active"{/if}>&#1575;&#1581;&#1585;&#1575;&#1586; &#1607;&#1608;&#1740;&#1578;</a>
						<a href="{site_url}users/help/111"{if strpos(getenv('REQUEST_URI'), 'users/help/111') !== false} class="active"{/if}>&#1602;&#1605;&#1575;&#1585; &#1575;&#1740;&#1605;&#1606;</a>
						<a href="{site_url}users/help/112"{if strpos(getenv('REQUEST_URI'), 'users/help/112') !== false} class="active"{/if}>&#1583;&#1586;&#1583;&#1740; &#1607;&#1575; &#1608; &#1705;&#1604;&#1575;&#1607;&#1576;&#1585;&#1583;&#1575;&#1585;&#1740; &#1607;&#1575;&#1740; &#1575;&#1740;&#1606;&#1578;&#1585;&#1606;&#1578;&#1740;</a>
					</div>
					<div class="mobile">
						<select class="selector">
							<option value="{site_url}users/help/100"{if strpos(getenv('REQUEST_URI'), 'users/help/100') !== false} selected="selected"{/if}>&#1588;&#1585;&#1575;&#1740;&#1591; &#1608; &#1590;&#1608;&#1575;&#1576;&#1591; &#1593;&#1590;&#1608;&#1740;&#1578;</option>
							<option value="{site_url}users/help/101"{if strpos(getenv('REQUEST_URI'), 'users/help/101') !== false} selected="selected"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740;</option>
							<option value="{site_url}users/help/102"{if strpos(getenv('REQUEST_URI'), 'users/help/102') !== false} selected="selected"{/if}>&#1570;&#1605;&#1608;&#1586;&#1588; &#1579;&#1576;&#1578; &#1601;&#1585;&#1605; &#1605;&#1740;&#1705;&#1587;</option>
							<option value="{site_url}users/help/103"{if strpos(getenv('REQUEST_URI'), 'users/help/103') !== false} selected="selected"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1578;&#1582;&#1578;&#1607; &#1606;&#1585;&#1583;</option>
							<option value="{site_url}users/help/104"{if strpos(getenv('REQUEST_URI'), 'users/help/104') !== false} selected="selected"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1585;&#1608;&#1604;&#1578;</option>
							<option value="{site_url}users/help/105"{if strpos(getenv('REQUEST_URI'), 'users/help/105') !== false} selected="selected"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1576;&#1604;&#1705; &#1580;&#1705; (21)</option>
							<option value="{site_url}users/help/106"{if strpos(getenv('REQUEST_URI'), 'users/help/106') !== false} selected="selected"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1576;&#1575;&#1705;&#1575;&#1585;&#1575;&#1578;</option>
							<option value="{site_url}users/help/107"{if strpos(getenv('REQUEST_URI'), 'users/help/107') !== false} selected="selected"{/if}>&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;&#1740; &#1662;&#1575;&#1587;&#1608;&#1585; &#1740;&#1575; 4 &#1576;&#1585;&#1711;</option>
							<option value="{site_url}users/help/108"{if strpos(getenv('REQUEST_URI'), 'users/help/108') !== false} selected="selected"{/if}>&#1585;&#1608;&#1588; &#1607;&#1575;&#1740; &#1576;&#1585;&#1583;&#1575;&#1588;&#1578; &#1605;&#1608;&#1580;&#1608;&#1583;&#1740;</option>
							<option value="{site_url}users/help/109"{if strpos(getenv('REQUEST_URI'), 'users/help/109') !== false} selected="selected"{/if}>&#1606;&#1581;&#1608;&#1607; &#1705;&#1575;&#1585; &#1576;&#1575; &#1662;&#1585;&#1601;&#1705;&#1578; &#1605;&#1575;&#1606;&#1740;</option>
							<option value="{site_url}users/help/110"{if strpos(getenv('REQUEST_URI'), 'users/help/110') !== false} selected="selected"{/if}>&#1575;&#1581;&#1585;&#1575;&#1586; &#1607;&#1608;&#1740;&#1578;</option>
							<option value="{site_url}users/help/111"{if strpos(getenv('REQUEST_URI'), 'users/help/111') !== false} selected="selected"{/if}>&#1602;&#1605;&#1575;&#1585; &#1575;&#1740;&#1605;&#1606;</option>
							<option value="{site_url}users/help/112"{if strpos(getenv('REQUEST_URI'), 'users/help/112') !== false} selected="selected"{/if}>&#1583;&#1586;&#1583;&#1740; &#1607;&#1575; &#1608; &#1705;&#1604;&#1575;&#1607;&#1576;&#1585;&#1583;&#1575;&#1585;&#1740; &#1607;&#1575;&#1740; &#1575;&#1740;&#1606;&#1578;&#1585;&#1606;&#1578;&#1740;</option>
						</select>
					</div>
				</div>
			</div>