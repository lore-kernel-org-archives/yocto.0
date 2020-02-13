Subject: warrior -> zeus: /etc/issue is not displayed before each login prompt
To: yocto@lists.yoctoproject.org
From: lukasz.odw39@gmail.com
X-Originating-Location: US (204.27.169.105)
X-Originating-Platform: Windows Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Feb 2020 13:19:03 -0800
Message-ID: <9loT.1581628743220318844.IgoX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KjUUdjH6PZLAzZLOEXwy"

--KjUUdjH6PZLAzZLOEXwy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

In warrior release /etc/issue was displayed before _every_ login prompt on=
 serial console, for example:

</etc/issue>
hostname login: <hitting Enter>

</etc/issue>
hostname login: <hitting Enter>

</etc/issue>
hostname login: <user>
Password: <bad password>

</etc/issue>
hostname login: <user>

At Zeus /etc/issue is printed only once:
</etc/issue>
hostname login: <hitting Enter>
hostname login: <hitting Enter>

hostname login: <user>
Password: <bad password>

hostname login:

I am not saying that it is a bug, but I would like to know what to change =
in zeus to get the old behavior.
Which package or configuration file should I look at?

Thank you in advance.

Best regards,
Lukasz

--KjUUdjH6PZLAzZLOEXwy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,<br /><br />In warrior release /etc/issue was displayed before _ev=
ery_ login prompt on serial console, for example:<br /><br />&lt;/etc/issue=
&gt;<br />hostname login: &lt;hitting Enter&gt;<br /><br />&lt;/etc/issue&g=
t;<br />hostname login: &lt;hitting Enter&gt;<br /><br />&lt;/etc/issue&gt;=
<br />hostname login: &lt;user&gt;<br />Password: &lt;bad password&gt;<br /=
><br />&lt;/etc/issue&gt;<br />hostname login: &lt;user&gt;<br /><br />At Z=
eus /etc/issue is printed only once:<br />&lt;/etc/issue&gt;<br />hostname =
login: &lt;hitting Enter&gt;<br />hostname login: &lt;hitting Enter&gt;<br =
/><br />hostname login: &lt;user&gt;<br />Password: &lt;bad password&gt;<br=
 /><br />hostname login:<br /><br />I am not saying that it is a bug, but I=
 would like to know what to change in zeus to get the old behavior. <br />W=
hich package or configuration file should I look at?<br /><br />Thank you i=
n advance.<br /><br />Best regards,<br />Lukasz</p>

--KjUUdjH6PZLAzZLOEXwy--
