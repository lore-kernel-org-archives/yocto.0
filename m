Subject: Re: Enable systemd service with unit template instance on startup
To: yocto@lists.yoctoproject.org
From: "Robert Varga" <robert.varga@getinge.com>
X-Originating-Location: Ulm, Baden-Württemberg, DE (217.240.134.124)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 03:58:10 -0700
References: <AM0PR02MB4563D7A2CA31B60D5661E32B979A0@AM0PR02MB4563.eurprd02.prod.outlook.com>
In-Reply-To: <AM0PR02MB4563D7A2CA31B60D5661E32B979A0@AM0PR02MB4563.eurprd02.prod.outlook.com>
Message-ID: <18722.1592391490544492049@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MCyXuVTrOQy3ia872ikr"

--MCyXuVTrOQy3ia872ikr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I think I found the issue. The template unit file had a line break at the e=
nd which caused a folder
/etc/systemd/system/multi-user.target *?*.wants
to be created which contained the expected link (can@can0.service). Note t=
he " *?"* behind ".target"!

Since systemd probably does not accept this, it did not work for me.
What puzzles me now is why bitbake has this issue with the line break at t=
he end of the file.

<snip>
...
[Install]
WantedBy=3Dmulti-user.target
</snip>

Is this intended behavior?

Thanks.
Rob

--MCyXuVTrOQy3ia872ikr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I think I found the issue. The template unit file had a line break at the e=
nd which caused a folder<br />/etc/systemd/system/multi-user.target<strong>=
?</strong>.wants<br />to be created which contained the expected link (can@=
can0.service). Note the "<strong>?"</strong> behind ".target"!<br /><br />
<div>Since systemd probably does not accept this, it did not work for me.<=
/div>
<div>What puzzles me now is why bitbake has this issue with the line break=
 at the end of the file.<br /><br />&lt;snip&gt;<br />...<br />
<div>[Install]</div>
<div>WantedBy=3Dmulti-user.target<br />&lt;/snip&gt;<br /><br /></div>
</div>
<div>Is this intended behavior?<br /><br />Thanks.<br />Rob</div>

--MCyXuVTrOQy3ia872ikr--
