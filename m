Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73B87E01409
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 23:06:14 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id q58so928063wes.5
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 23:06:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=nDSdDUyaaH5FNj+LWbGyyc59NQjXfH48ehyuWIcnTu8=;
	b=Xl88rEv9EXBgewOVa7LO3uS4aWRftqAhcYkuRLIEP9FJRU23g1O9epUzVVFOjVgURZ
	/c8IDdGZm4Yze+3/QIa5AFUOBhKR3sZP2FKbXLRaa6BiXP0mL26JOqnLg2/FnecAqJG2
	/otKS9Zw/91FsBk5OEKDSJ9tCJ10VEbJqt6WftepQurXTGPx4BvaZ9BZwSYKiX6UVGzu
	dLNnh+UpKpzyxI4wzxEXBrIOOGR5/nvWHzxuNzLspKVP8k4qZjzQIWyVIuI/EpSrPCeD
	mMB/BuYJ1L8EMIx4EMcdETzlZuEZI0ssnSU/Qz0z9rNszuIRRzARWNRBFfPBpgEmQzXE
	c8ZQ==
X-Received: by 10.194.249.69 with SMTP id ys5mr19999240wjc.39.1370412372787;
	Tue, 04 Jun 2013 23:06:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.165.6 with HTTP; Tue, 4 Jun 2013 23:05:52 -0700 (PDT)
In-Reply-To: <CAMUsWmD6F_qEm95q5y92xuP5yg3sNeBm+6GnaMQGOge3CmP8xw@mail.gmail.com>
References: <CANwz6nzC4O8bN92q2YCCLtmGKK1S9LwYPLyWR0VZZBY+EiAUtg@mail.gmail.com>
	<CAMUsWmD6F_qEm95q5y92xuP5yg3sNeBm+6GnaMQGOge3CmP8xw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 5 Jun 2013 08:05:52 +0200
Message-ID: <CAP71Wjx=WoR6MAgGpU+nVAGt2Grnk1Y88qOepDjUeyKeX027Ug@mail.gmail.com>
To: Akshay Sahota <akki.sahota@gmail.com>
X-Gm-Message-State: ALoCoQn7wdKF19cB2A+BNeu1Pben4LyceqFG47ugzC3ED0lRbHJDaBoqjtNFPo5sAhxZhkZQR2wp
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Edward Vidal <vidal.develone@gmail.com>
Subject: Re: yocto with meta-ti
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Jun 2013 06:06:14 -0000
Content-Type: multipart/alternative; boundary=001a11c28308ad197f04de61fee5

--001a11c28308ad197f04de61fee5
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 5, 2013 at 7:55 AM, Akshay Sahota <akki.sahota@gmail.com> wrote:

> *
> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/"
>  #BBMASK = "meta-ti/recipes-misc meta-oe/recipes-graphics"
> #BBMASK = "meta-oe/recipes-devtools"
> #BBMASK = "meta-oe/recipes-graphics"
> #
> # Parallelism Options*...
>
>
> and bblayers.conf
>
> *BBLAYERS ?= " \
>   /home/asahota/poky-try/poky/meta \
>   /home/asahota/poky-try/poky/meta-yocto \
>   /home/asahota/poky-try/poky/meta-yocto-bsp \
>   /home/asahota/poky-try/poky/meta-ti \
>   /home/asahota/poky-try/poky/meta-openembedded/meta-oe \
>   "
> *
>

i suspect you are using wrong combination of branch/version, but you don't
give what branch/version you are using, not cannot confirm.


> *
> BBLAYERS_NON_REMOVABLE ?= " \
>   /home/asahota/poky-try/poky/meta \
>   /home/asahota/poky-try/poky/meta-yocto \
>   "*
>
> and the output is :
> *$ bitbake -k core-image-minimal
> Pseudo is not present but is required, building this first before the main
> build
> WARNING: Host distribution "Ubuntu 12.04.2 LTS" has not been validated
> with this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested distribution.
> ERROR: ParseError at
> /home/asahota/poky-try/poky/meta-openembedded/meta-oe/recipes-devtools/cloud9/
> cloud9_0.6.bb:11: Could not inherit file classes/systemd.bbclass
> *
>

systemd.bbclass was introduced in 'dylan' version of Yocto (aka 1.4). are
you sure this is what you are using? to be it sounds like you are using
Yocto/danny with meta-ti and meta-oe 'master' branch (or dylan branch).


*ERROR: Command execution failed: Exited with 1
>
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> *
> What is the mistake, sounds too silly.!

--001a11c28308ad197f04de61fee5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Jun 5, 2013 at 7:55 AM, Akshay Sahota <span dir=3D"ltr">&lt;<a href=
=3D"mailto:akki.sahota@gmail.com" target=3D"_blank">akki.sahota@gmail.com</=
a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div><div><div><i><div class=3D"im">BBMASK ?=3D &quot;.*/m=
eta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/&quot;<br>

</div>
#BBMASK =3D &quot;meta-ti/recipes-misc meta-oe/recipes-graphics&quot;<br>#B=
BMASK =3D &quot;meta-oe/recipes-devtools&quot;<br>#BBMASK =3D &quot;meta-oe=
/recipes-graphics&quot;<br>#<br># Parallelism Options</i>...<br><br><br></d=
iv>


and bblayers.conf<br><br><i>BBLAYERS ?=3D &quot; \<br>=A0 /home/asahota/pok=
y-try/poky/meta \<br>=A0 /home/asahota/poky-try/poky/meta-yocto \<br>=A0 /h=
ome/asahota/poky-try/poky/meta-yocto-bsp \<br>=A0 /home/asahota/poky-try/po=
ky/meta-ti \<br>


=A0 /home/asahota/poky-try/poky/meta-openembedded/meta-oe \<br>=A0 &quot;<b=
r></i></div></div></blockquote><div><br></div><div class=3D"gmail_extra">i =
suspect you are using wrong combination of branch/version, but you don&#39;=
t give what branch/version you are using, not cannot confirm.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div><div><i><br>BBLAYERS_NON_REMOVABLE ?=3D=
 &quot; \<br>

=A0 /home/asahota/poky-try/poky/meta \<br>=A0 /home/asahota/poky-try/poky/m=
eta-yocto \<br>=A0 &quot;</i><br><br>
</div>and the output is :<br><i>$ bitbake -k core-image-minimal<br>Pseudo i=
s not present but is required, building this first before the main build<br=
>WARNING: Host distribution &quot;Ubuntu 12.04.2 LTS&quot; has not been val=
idated with this version of the build system; you may possibly experience u=
nexpected failures. It is recommended that you use a tested distribution.<b=
r>


ERROR: ParseError at /home/asahota/poky-try/poky/meta-openembedded/meta-oe/=
recipes-devtools/cloud9/<a href=3D"http://cloud9_0.6.bb:11" target=3D"_blan=
k">cloud9_0.6.bb:11</a>: Could not inherit file classes/systemd.bbclass<br>

</i></div></blockquote><div>=A0</div><div style>systemd.bbclass was introdu=
ced in &#39;dylan&#39; version of Yocto (aka 1.4). are you sure this is wha=
t you are using? to be it sounds like you are using Yocto/danny with meta-t=
i and meta-oe &#39;master&#39; branch (or dylan branch).=A0</div>

<div style><br></div><div style><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:=
rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div><i>ERROR: C=
ommand execution failed: Exited with 1<br>


<br>Summary: There was 1 WARNING message shown.<br>Summary: There were 2 ER=
ROR messages shown, returning a non-zero exit code.<br></i><br></div>What i=
s the mistake, sounds too silly.!</blockquote></div><br></div><div class=3D=
"gmail_extra">

<br></div></div>

--001a11c28308ad197f04de61fee5--
