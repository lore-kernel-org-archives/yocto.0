Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D6B8E00B87; Wed,  9 Aug 2017 14:13:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE373E00B65
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 14:13:29 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id m34so12017363iti.1
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 14:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HMZc6Sbpvj7VdIcCUwJJKkJXPQtrzyZJBMc4WZuDBaY=;
	b=KKj8HCZP0lM27heaS4mc/ZGWcSR6c8P+ICgCfIm0FZYNTCMMYmtErOv88s8zR8livS
	7p5ZLHnp2A1e/Qby2sx8PUEC5pFk8Se3r0Q4N7VPegMCoUO+0qgvp1eGSRQV1qSQmirK
	yrDoUEzMxHOkD4O1O1AEsAzSjdYermma8OsM3XT47q3FMqA38M8YKG4fiWrCAS7jYuBj
	1ATRLRZBRCHxPoHwYR9M7sTf3hCJG5xCiaszQb9EIRYwqy6AHmkKDunJtRc0VZm5uyrd
	kGLp6FFWHU+W+ugxKEjXmP79Hqu0vbJbCH2i6b/xse5qcr/3wdCH8+TJfh+Ify5IXPk8
	rLUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HMZc6Sbpvj7VdIcCUwJJKkJXPQtrzyZJBMc4WZuDBaY=;
	b=sFpvGgW5Op0AOwBnuptCbLOtRSoeomFDHDQ7Kfng4ypH8vUE+/lDaYIWVMdJEr1aLu
	pj0o3vhCD/SBvyYEowUnRbtOINeE4CBslfEiZ2OM6RrzBcwZjSlm7ydAr5KaaboiSjqK
	Xrul96omAO7L5SGADXysY4NznIZuT/Huc25Q8O+DhUT8TWjF3GmdZsbCYeeNuvPxVP3c
	LDypfn3fs7lR9e8lUuJ2UozBYf83T3f3MLG3d5dLRQ7yKVeFDvUCWFRVOPBtLKMr5dEg
	T0zO6dnb8DHZW8c2K6W24jf+/j+j+6r86lX49XKp+RY2UygobW5HXAqiJwkAQ3JA83Lo
	vfjQ==
X-Gm-Message-State: AIVw113Unx+kJxRjn2rsD9ozAhJz30O8gLj7lwn4Rqcm/2EaT9Hm9SeG
	cz5ea0WshBjMb6R3UEySSRdT/Q3WRahk
X-Received: by 10.36.48.193 with SMTP id q184mr8843684itq.112.1502313208946;
	Wed, 09 Aug 2017 14:13:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Wed, 9 Aug 2017 14:13:08 -0700 (PDT)
In-Reply-To: <CAByQQ_qrT1fbMb0XB6H2_OPX3owx87mgPTXfjyaf67XBUKji4Q@mail.gmail.com>
References: <759e84aa-b429-d9f8-bd71-aeef9fbe7bfe@gmail.com>
	<CAJTo0Lb41N7A_dZMHKHoBAEDm0KHAW2K-R-TWvEKxbsygbyK=g@mail.gmail.com>
	<adde6220-1d6d-103d-b9ff-cd39d32bf943@gmail.com>
	<CAJTo0LbM1Ly6aFCeq7FTsOiCpmhSw_PoRRu-3NmMbKx1CXtAkQ@mail.gmail.com>
	<CAByQQ_q5s2cWY6FJVLnSaygmS1ytcYTgLAHfR=q_p3YNwQogzA@mail.gmail.com>
	<CAJTo0LaPD2aQp7ufSgg6PePV7k1_nqGKdzhpWTYPacqmdEtu9g@mail.gmail.com>
	<DB5P122MB000777D198C8510F25BF9093D68B0@DB5P122MB0007.EURP122.PROD.OUTLOOK.COM>
	<CAByQQ_rHGL-wCDP_gnws4txKTq_6Qn1ux83jx4BjiZbveLDCNQ@mail.gmail.com>
	<CAByQQ_qrT1fbMb0XB6H2_OPX3owx87mgPTXfjyaf67XBUKji4Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Aug 2017 22:13:08 +0100
Message-ID: <CAJTo0LbFHY1VQ9KeaCWWXG6EviiJsf7R9hjgeAeS4fi3rP_mGA@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: bitbake error ?
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
X-List-Received-Date: Wed, 09 Aug 2017 21:13:31 -0000
Content-Type: multipart/alternative; boundary="001a11c0103029400e0556588d7e"

--001a11c0103029400e0556588d7e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Maybe.  We don't have your computer, so this is your problem to resolve.

Ross

On 9 August 2017 at 22:06, Riko Ho <antonius.riko@gmail.com> wrote:

> Can it be related with:
> https://askubuntu.com/questions/425484/unable-to-use-wget-command
> ?
>
> On 09/08/2017 8:43 PM, "Bejar-Colonia, Carlos" <
> carlos.bejar-colonia@philips.com> wrote:
>
> This issue seems to be related to proxy server. Probably your network is
> behind a  proxy.
>
> This may help:
>
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
>
>
>
> -Carlos B
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctopro
> ject.org] *On Behalf Of *Burton, Ross
> *Sent:* Wednesday, August 09, 2017 6:35 AM
> *To:* Riko Ho <antonius.riko@gmail.com>
> *Cc:* N: <yocto@yoctoproject.org>
> *Subject:* Re: [yocto] bitbake error ?
>
>
>
> I've no idea why you can't connect to example.com using wget, you'll have
> to debug it yourself.
>
>
>
> Ross
>
>
>
> On 9 August 2017 at 11:27, Riko Ho <antonius.riko@gmail.com> wrote:
>
> so what s the issue=EF=BC=9F my connection is working. is it related with
> /etc/hosts?
> thanks
>
> On Aug 9, 2017 4:38 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>
> Yep.  That's your problem.
>
>
>
> $ wget https://www.example.com/
>
> --2017-08-09 09:37:43--  https://www.example.com/
>
> Resolving www.example.com... 93.184.216.34, 2606:2800:220:1:248:1893:25c8=
:
> 1946
>
> Connecting to www.example.com|93.184.216.34|:443... connected.
>
> HTTP request sent, awaiting response... 200 OK
>
> Length: 1270 (1.2K) [text/html]
>
> Saving to: =E2=80=98index.html=E2=80=99
>
>
>
> index.html          100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D>]   1.24K  --.-KB/s    in 0s
>
>
>
> 2017-08-09 09:37:44 (15.3 MB/s) - =E2=80=98index.html=E2=80=99 saved [127=
0/1270]
>
>
>
> Works for me.  Your network or wget is broken, and that is unrelated to
> bitbake/yocto/etc.
>
>
>
> Ross
>
>
>
> On 9 August 2017 at 09:34, Riko <antonius.riko@gmail.com> wrote:
>
> This one ?
>
> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ wget
> https://www.example.com/
> --2017-08-09 16:33:05--  https://www.example.com/
> Resolving www.example.com (www.example.com)... failed: Name or service
> not known.
> wget: unable to resolve host address 'www.example.com=E2=80=99
>
>
>
> On 09/08/17 16:31, Burton, Ross wrote:
>
> For some reason, bitbake can't do "wget https://www.example.com/".   Try
> running that command outside of bitbake and seeing if it returns any
> errors.
>
>
>
> Ross
>
>
>
> On 9 August 2017 at 09:29, Riko <antonius.riko@gmail.com> wrote:
>
> Dear Yocto Member,
>
>
> I have downloaded fresh install of yocto but got error, here's the trace =
:
>
> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~$ git clone -b pyro git://
> git.yoctoproject.org/poky.git
> Cloning into 'poky'...
> remote: Counting objects: 373183, done.
> remote: Compressing objects: 100% (89366/89366), done.
> remote: Total 373183 (delta 277418), reused 373031 (delta 277266)
> Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47 MiB/s, done.
> Resolving deltas: 100% (277418/277418), done.
> Checking connectivity... done.
>
>
> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky$ source
> oe-init-build-env
> You had no conf/local.conf file. This configuration file has therefore be=
en
> created for you with some default values. You may wish to edit it to, for
> example, select a different MACHINE (target hardware). See conf/local.con=
f
> for more information as common configuration options are commented.
>
> You had no conf/bblayers.conf file. This configuration file has therefore
> been
> created for you with some default values. To add additional metadata laye=
rs
> into your configuration please add entries to conf/bblayers.conf.
>
> The Yocto Project has extensive documentation about OE including a
> reference
> manual which can be found at:
>     http://yoctoproject.org/documentation
>
> For more information about OpenEmbedded see their website:
>     http://www.openembedded.org/
>
>
> ### Shell environment set up for builds. ###
>
> You can now run 'bitbake <target>'
>
> Common targets are:
>     core-image-minimal
>     core-image-sato
>     meta-toolchain
>     meta-ide-support
>
> You can also run generated qemu images with a command like 'runqemu
> qemux86'
> bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ bitbake
> core-image-minimal
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Fetcher failure for URL: 'https://www.example.com/'. URL
> https://www.example.com/ doesn't work.
>     Please ensure your host's network is configured correctly,
>     or set BB_NO_NETWORK =3D "1" to disable network access if
>     all required sources are on local disk.
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Any suggestions ?
>
> I'm using ubuntu 16.04,
>
> Thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>
>
>
>
>
> ------------------------------
> The information contained in this message may be confidential and legally
> protected under applicable law. The message is intended solely for the
> addressee(s). If you are not the intended recipient, you are hereby
> notified that any use, forwarding, dissemination, or reproduction of this
> message is strictly prohibited and may be unlawful. If you are not the
> intended recipient, please contact the sender by return e-mail and destro=
y
> all copies of the original message.
>
>
>

--001a11c0103029400e0556588d7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Maybe.=C2=A0 We don&#39;t have your computer, so this is y=
our problem to resolve.<div><br></div><div>Ross</div></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On 9 August 2017 at 22:06, Riko H=
o <span dir=3D"ltr">&lt;<a href=3D"mailto:antonius.riko@gmail.com" target=
=3D"_blank">antonius.riko@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><p dir=3D"ltr">Can it be related with:<br>
<a href=3D"https://askubuntu.com/questions/425484/unable-to-use-wget-comman=
d" target=3D"_blank">https://askubuntu.com/<wbr>questions/425484/unable-to-=
<wbr>use-wget-command</a><br>
?</p><div class=3D"HOEnZb"><div class=3D"h5">
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 09/08/2017 8:4=
3 PM, &quot;Bejar-Colonia, Carlos&quot; &lt;<a href=3D"mailto:carlos.bejar-=
colonia@philips.com" target=3D"_blank">carlos.bejar-colonia@philips.<wbr>co=
m</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"m_-4550438871=
8518596quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_-45504388718518596m_-4983334058515676935WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">This issue seems to be related to pro=
xy server. Probably your network is behind a =C2=A0proxy.<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">This may help:<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><a href=3D"https://wiki.yoctoproject.=
org/wiki/Working_Behind_a_Network_Proxy" target=3D"_blank">https://wiki.yoc=
toproject.org/<wbr>wiki/Working_Behind_a_Network_<wbr>Proxy</a><u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">-Carlos B<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> <a href=3D"mailto:yocto-bounce=
s@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [m=
ailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctopro<wbr>ject.org</a>]
<b>On Behalf Of </b>Burton, Ross<br>
<b>Sent:</b> Wednesday, August 09, 2017 6:35 AM<br>
<b>To:</b> Riko Ho &lt;<a href=3D"mailto:antonius.riko@gmail.com" target=3D=
"_blank">antonius.riko@gmail.com</a>&gt;<br>
<b>Cc:</b> N: &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] bitbake error ?<u></u><u></u></span></p><div cl=
ass=3D"m_-45504388718518596elided-text">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">I&#39;ve no idea why you can&#39;t connect to <a hre=
f=3D"http://example.com" target=3D"_blank">
example.com</a> using wget, you&#39;ll have to debug it yourself.<u></u><u>=
</u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ross<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 9 August 2017 at 11:27, Riko Ho &lt;<a href=3D"ma=
ilto:antonius.riko@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>=
&gt; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<p>so what s the issue<span style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif">=EF=BC=9F</span> my connection is working. is it related with /etc/ho=
sts?<br>
thanks<u></u><u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">On Aug 9, 2017 4:38 PM, &quot;Burton, Ross&quot; &lt=
;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@int=
el.com</a>&gt; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<p class=3D"MsoNormal">Yep.=C2=A0 That&#39;s your problem.<u></u><u></u></p=
>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">$ wget <a href=3D"https://www.example.com/" target=
=3D"_blank">https://www.example.com/</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">--2017-08-09 09:37:43-- =C2=A0<a href=3D"https://www=
.example.com/" target=3D"_blank">https://www.example.com/</a><u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal">Resolving <a href=3D"http://www.example.com" target=
=3D"_blank">www.example.com</a>... 93.184.216.34, 2606:2800:220:1:248:1893:=
25c8:<wbr>1946<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Connecting to <a href=3D"http://www.example.com" tar=
get=3D"_blank">
www.example.com</a>|93.184.216.34|<wbr>:443... connected.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">HTTP request sent, awaiting response... 200 OK<u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Length: 1270 (1.2K) [text/html]<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Saving to: =E2=80=98index.html=E2=80=99<u></u><u></u=
></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">index.html =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0100%[=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt;] =C2=A0 1.24K=
 =C2=A0--.-KB/s =C2=A0 =C2=A0in 0s<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">2017-08-09 09:37:44 (15.3 MB/s) - =E2=80=98index.htm=
l=E2=80=99 saved [1270/1270]<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Works for me.=C2=A0 Your network or wget is broken, =
and that is unrelated to bitbake/yocto/etc.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ross<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 9 August 2017 at 09:34, Riko &lt;<a href=3D"mailt=
o:antonius.riko@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt=
; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<p>This one ?<u></u><u></u></p>
<p style=3D"margin-bottom:12.0pt">bianchi@bianchi-HP-Pavilion-dv<wbr>6-Note=
book-PC:~/poky/build$ wget
<a href=3D"https://www.example.com/" target=3D"_blank">https://www.example.=
com/</a><br>
--2017-08-09 16:33:05--=C2=A0 <a href=3D"https://www.example.com/" target=
=3D"_blank">https://www.example.com/</a><br>
Resolving <a href=3D"http://www.example.com" target=3D"_blank">www.example.=
com</a> (<a href=3D"http://www.example.com" target=3D"_blank">www.example.c=
om</a>)... failed: Name or service not known.<br>
wget: unable to resolve host address &#39;<a href=3D"http://www.example.com=
=E2=80=99" target=3D"_blank">www.example.com=E2=80=99</a><u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 09/08/17 16:31, Burton, Ross wrote:<u></u><u></u>=
</p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">For some reason, bitbake can&#39;t do &quot;wget <a =
href=3D"https://www.example.com/" target=3D"_blank">
https://www.example.com/</a>&quot;. =C2=A0 Try running that command outside=
 of bitbake and seeing if it returns any errors.
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ross<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 9 August 2017 at 09:29, Riko &lt;<a href=3D"mailt=
o:antonius.riko@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt=
; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<p class=3D"MsoNormal">Dear Yocto Member,<br>
<br>
<br>
I have downloaded fresh install of yocto but got error, here&#39;s the trac=
e :<br>
<br>
bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~$ git clone -b pyro git:/=
/<a href=3D"http://git.yoctoproject.org/poky.git" target=3D"_blank">git.yoc=
toproject.org/pok<wbr>y.git</a><br>
Cloning into &#39;poky&#39;...<br>
remote: Counting objects: 373183, done.<br>
remote: Compressing objects: 100% (89366/89366), done.<br>
remote: Total 373183 (delta 277418), reused 373031 (delta 277266)<br>
Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47 MiB/s, done.<br>
Resolving deltas: 100% (277418/277418), done.<br>
Checking connectivity... done.<br>
<br>
<br>
bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky$ source oe-init-bui=
ld-env<br>
You had no conf/local.conf file. This configuration file has therefore been=
<br>
created for you with some default values. You may wish to edit it to, for<b=
r>
example, select a different MACHINE (target hardware). See conf/local.conf<=
br>
for more information as common configuration options are commented.<br>
<br>
You had no conf/bblayers.conf file. This configuration file has therefore b=
een<br>
created for you with some default values. To add additional metadata layers=
<br>
into your configuration please add entries to conf/bblayers.conf.<br>
<br>
The Yocto Project has extensive documentation about OE including a referenc=
e<br>
manual which can be found at:<br>
=C2=A0 =C2=A0 <a href=3D"http://yoctoproject.org/documentation" target=3D"_=
blank">http://yoctoproject.org/docume<wbr>ntation</a><br>
<br>
For more information about OpenEmbedded see their website:<br>
=C2=A0 =C2=A0 <a href=3D"http://www.openembedded.org/" target=3D"_blank">ht=
tp://www.openembedded.org/</a><br>
<br>
<br>
### Shell environment set up for builds. ###<br>
<br>
You can now run &#39;bitbake &lt;target&gt;&#39;<br>
<br>
Common targets are:<br>
=C2=A0 =C2=A0 core-image-minimal<br>
=C2=A0 =C2=A0 core-image-sato<br>
=C2=A0 =C2=A0 meta-toolchain<br>
=C2=A0 =C2=A0 meta-ide-support<br>
<br>
You can also run generated qemu images with a command like &#39;runqemu qem=
ux86&#39;<br>
bianchi@bianchi-HP-Pavilion-dv<wbr>6-Notebook-PC:~/poky/build$ bitbake core=
-image-minimal<br>
ERROR:=C2=A0 OE-core&#39;s config sanity checker detected a potential misco=
nfiguration.<br>
=C2=A0 =C2=A0 Either fix the cause of this error or at your own risk disabl=
e the checker (see sanity.conf).<br>
=C2=A0 =C2=A0 Following is the list of potential problems / advisories:<br>
<br>
=C2=A0 =C2=A0 Fetcher failure for URL: &#39;<a href=3D"https://www.example.=
com/" target=3D"_blank">https://www.example.com/</a>&#39;. URL
<a href=3D"https://www.example.com/" target=3D"_blank">https://www.example.=
com/</a> doesn&#39;t work.<br>
=C2=A0 =C2=A0 Please ensure your host&#39;s network is configured correctly=
,<br>
=C2=A0 =C2=A0 or set BB_NO_NETWORK =3D &quot;1&quot; to disable network acc=
ess if<br>
=C2=A0 =C2=A0 all required sources are on local disk.<br>
<br>
<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
<br>
Any suggestions ?<br>
<br>
I&#39;m using ubuntu 16.04,<br>
<br>
Thanks<span style=3D"color:#888888"><br>
<br>
<span class=3D"m_-45504388718518596m_-4983334058515676935m36600786215938911=
1m-2108199454515190859m1262213939812178703hoenzb">--
</span><br>
<span class=3D"m_-45504388718518596m_-4983334058515676935m36600786215938911=
1m-2108199454515190859m1262213939812178703hoenzb">_________________________=
_____<wbr>_________________</span><br>
<span class=3D"m_-45504388718518596m_-4983334058515676935m36600786215938911=
1m-2108199454515190859m1262213939812178703hoenzb">yocto mailing list</span>=
<br>
<span class=3D"m_-45504388718518596m_-4983334058515676935m36600786215938911=
1m-2108199454515190859m1262213939812178703hoenzb"><a href=3D"mailto:yocto@y=
octoproject.org" target=3D"_blank">yocto@yoctoproject.org</a></span><br>
<span class=3D"m_-45504388718518596m_-4983334058515676935m36600786215938911=
1m-2108199454515190859m1262213939812178703hoenzb"><a href=3D"https://lists.=
yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproje=
ct.org<wbr>/listinfo/yocto</a></span></span><u></u><u></u></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</blockquote>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div></div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this message may be confidential and legally protected under applicable la=
w. The message is intended solely for the addressee(s). If you are not the =
intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this message i=
s strictly prohibited and may be unlawful. If you are not the intended reci=
pient, please contact the sender by return e-mail and destroy all copies of=
 the original message.<br>
</font>
</div>

</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a11c0103029400e0556588d7e--
