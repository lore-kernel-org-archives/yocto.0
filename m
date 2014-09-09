Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F0E6E007A2; Mon,  8 Sep 2014 17:39:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECB90E00786
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 17:39:01 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id z107so16487686qgd.35
	for <yocto@yoctoproject.org>; Mon, 08 Sep 2014 17:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MHJSsZjUkPf53OlC8sBfEtxC8BGmKl1NOJvYAY/1jkI=;
	b=D9IFYB364B+TOsVg6jYQWwqTYYN/PQC9iWOVniGySZOftC70jC1gLfdL9oSlhNg/sV
	80XIDNvFe5LH9XFR0EEgRtD/vh1oMTz9yI8DPWEa2+UUm7KsyZBFTibVO3lJvKoytjUu
	yyHh9fF4xBmsruIGGVzw6NjPLFf1Si1MDiz3ivRwGU+abD1zoTS/M9C4gpL+ZUMsmVzb
	erGD4xxWlYpuiGONt+cw7T/Xzi+zmvcQZtq/LOszbqgDEe+Fw2FsGYeDh6RelJBb/cQe
	fZNFL9RZlvBIeJmkZ9oV6qRD+xnPXMqMmczP08mJ/IbXxQE5EZxLruPPp/mQrY4H/QVF
	rioQ==
X-Received: by 10.224.86.5 with SMTP id q5mr47787749qal.36.1410223140710; Mon,
	08 Sep 2014 17:39:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Mon, 8 Sep 2014 17:38:40 -0700 (PDT)
In-Reply-To: <CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Mon, 8 Sep 2014 21:38:40 -0300
Message-ID: <CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
To: "tomek82221 Gazeta.pl" <tomek82221@gazeta.pl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Tue, 09 Sep 2014 00:39:03 -0000
Content-Type: multipart/alternative; boundary=001a11c2c1725b3e440502972918

--001a11c2c1725b3e440502972918
Content-Type: text/plain; charset=ISO-8859-1

Hi Chris,

On Mon, Sep 8, 2014 at 2:28 PM, tomek82221 Gazeta.pl <tomek82221@gazeta.pl>
wrote:

> Can I use kernel version 3.8, meta-beagleboard as BSP layer in Yocto 1.6 ?
>
Yes you can.

Here - https://www.yoctoproject.org/downloads/core/daisy16 is "Linux
> kernel 3.14 and 3.10 LTSI "
>
> I build yocto with
> BBLAYERS ?= " \
>   /home/fil/Pulpit/yocto/poky/meta \
>   /home/fil/Pulpit/yocto/poky/meta-yocto \
>   /home/fil/Pulpit/yocto/poky/meta-beagleboard/common-bsp \
>   /home/fil/Pulpit/yocto/poky/meta-openembedded/meta-oe \
>   "
>
> have some errors:
>
> ERROR: QA Issue: linux-mainline: Files/directories were installed but
> not shipped
>   /lib/firmware/sb16
>   /lib/firmware/korg
>   /lib/firmware/sb16/mulaw_main.csp
>   /lib/firmware/sb16/alaw_main.csp
>   /lib/firmware/sb16/ima_adpcm_init.csp
>   /lib/firmware/sb16/ima_adpcm_capture.csp
>   /lib/firmware/sb16/ima_adpcm_playback.csp
>   /lib/firmware/korg/k1212.dsp
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
>
> /home/fil/Pulpit/yocto/poky/build/tmp/work/beaglebone-poky-linux-gnueabi/linux-mainline/3.8.13-r23a/temp/log.do_package.6509
> NOTE: recipe linux-mainline-3.8.13-r23a: task do_package: Failed
> ERROR: Task 88
> (/home/fil/Pulpit/yocto/poky/meta-beagleboard/common-bsp/recipes-kernel/linux/
> linux-mainline_3.8.bb,
> do_package) failed with exit code '1'
>

To solve this you can use a bbappend setting:

INSANE_SKIP_${PN} += "installed-vs-shipped"



Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c2c1725b3e440502972918
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Chris,</div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Mon, Sep 8, 2014 at 2:28 PM, t=
omek82221 Gazeta.pl <span dir=3D"ltr">&lt;<a href=3D"mailto:tomek82221@gaze=
ta.pl" target=3D"_blank">tomek82221@gazeta.pl</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;paddi=
ng-left:1ex"><div id=3D":67p" class=3D"" style=3D"overflow:hidden">Can I us=
e kernel version 3.8, meta-beagleboard as BSP layer in Yocto 1.6 ?<br></div=
></blockquote><div>Yes you can.</div><div><br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div i=
d=3D":67p" class=3D"" style=3D"overflow:hidden">
Here - <a href=3D"https://www.yoctoproject.org/downloads/core/daisy16" targ=
et=3D"_blank">https://www.yoctoproject.org/downloads/core/daisy16</a> is &q=
uot;Linux<br>
kernel 3.14 and 3.10 LTSI &quot;<br>
<br>
I build yocto with<br>
BBLAYERS ?=3D &quot; \<br>
=A0 /home/fil/Pulpit/yocto/poky/meta \<br>
=A0 /home/fil/Pulpit/yocto/poky/meta-yocto \<br>
=A0 /home/fil/Pulpit/yocto/poky/meta-beagleboard/common-bsp \<br>
=A0 /home/fil/Pulpit/yocto/poky/meta-openembedded/meta-oe \<br>
=A0 &quot;<br>
<br>
have some errors:<br>
<br>
ERROR: QA Issue: linux-mainline: Files/directories were installed but<br>
not shipped<br>
=A0 /lib/firmware/sb16<br>
=A0 /lib/firmware/korg<br>
=A0 /lib/firmware/sb16/mulaw_main.csp<br>
=A0 /lib/firmware/sb16/alaw_main.csp<br>
=A0 /lib/firmware/sb16/ima_adpcm_init.csp<br>
=A0 /lib/firmware/sb16/ima_adpcm_capture.csp<br>
=A0 /lib/firmware/sb16/ima_adpcm_playback.csp<br>
=A0 /lib/firmware/korg/k1212.dsp<br>
ERROR: QA run found fatal errors. Please consider fixing them.<br>
ERROR: Function failed: do_package_qa<br>
ERROR: Logfile of failure stored in:<br>
/home/fil/Pulpit/yocto/poky/build/tmp/work/beaglebone-poky-linux-gnueabi/li=
nux-mainline/3.8.13-r23a/temp/log.do_package.6509<br>
NOTE: recipe linux-mainline-3.8.13-r23a: task do_package: Failed<br>
ERROR: Task 88 (/home/fil/Pulpit/yocto/poky/meta-beagleboard/common-bsp/rec=
ipes-kernel/linux/<a href=3D"http://linux-mainline_3.8.bb" target=3D"_blank=
">linux-mainline_3.8.bb</a>,<br>
do_package) failed with exit code &#39;1&#39;</div></blockquote></div><br>T=
o solve this you can use a bbappend setting:</div><blockquote style=3D"marg=
in:0 0 0 40px;border:none;padding:0px"><div class=3D"gmail_extra">INSANE_SK=
IP_${PN} +=3D &quot;installed-vs-shipped&quot;</div></blockquote><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br clear=3D"all"><di=
v><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sue=
iro<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcados.=
com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campa=
ign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br</=
a><br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c2c1725b3e440502972918--
