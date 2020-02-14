Subject: Re: Incrementally building constantly changing application source in a workflow-friendly way with #yocto
To: yocto@lists.yoctoproject.org
From: "Pieter Smith" <smipi01@gmail.com>
X-Originating-Location: St Albans, England, GB (165.225.80.120)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 14 Feb 2020 02:45:34 -0800
References: <CANNYZj-WtCPOUTD5tsq3_3K2w6tAaB9FK4E_SEE2jwR-tMYfvQ@mail.gmail.com>
In-Reply-To: <CANNYZj-WtCPOUTD5tsq3_3K2w6tAaB9FK4E_SEE2jwR-tMYfvQ@mail.gmail.com>
Message-ID: <3765.1581677134264794712@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wWnaRh3BqKjoNXmNlYdi"

--wWnaRh3BqKjoNXmNlYdi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Alex!

This also works if files/src is a symlink to the actual sources. I just ne=
ed to take into account that the sources land in $WORKDIR/src.

I still need to do the following though to get the behaviour that I actual=
ly need:

bitbake -f -c clean my-application && \
bitbake -f -c fetch my-application=C2=A0&& \
bitbake ...

Can you suggest a more elegant way to achieve this?

Pieter

--wWnaRh3BqKjoNXmNlYdi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Thanks Alex!</p>
<p>This also works if files/src is a symlink to the actual sources. I just=
 need to take into account that the sources land in $WORKDIR/src.<br /><br =
/>I still need to do the following though to get the behaviour that I actua=
lly need:</p>
<p>bitbake -f -c clean my-application &amp;&amp; \<br />bitbake -f -c fetc=
h my-application&nbsp;&amp;&amp; \<br />bitbake ...<br /><br />Can you sugg=
est a more elegant way to achieve this?<br /><br />Pieter</p>

--wWnaRh3BqKjoNXmNlYdi--
