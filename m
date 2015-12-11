Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43D07E00B37; Fri, 11 Dec 2015 08:41:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (federicobriata[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9DCEE007C9
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 08:41:09 -0800 (PST)
Received: by lfed137 with SMTP id d137so31635454lfe.3
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 08:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ACffhwvgXQCfuJHM32Tkp116vk9d8Sv9GFhiaIzxDas=;
	b=AAkwIJczi7Edj/8fb26kzKk8i0tAJlqiMm2nhRfjXcXnxvw/w5I6lP5j/hp5zSclA5
	PV0JloI/xiiKxvgSLN1CMYiSDwNFHIdQDTJtDpd9jEtdEy1iIQPDWNxSytu439X9QvOY
	M/xl3Lc10ug1PUFmf6t/DZelZS/4KI/pumxklKEgOzIHDMb/PFD9cNCBAYyY+EluTSXV
	vV+AeTSSmEEr6+Fp2+wSKiIv9HTfUCifgOKJLkNFoR8T9HYB3+MnE/B3sHI/6ExfmHwt
	h+qOkXGqtCh3J7XZ29kIo179i0/PmaCkbg0QuqAe+TiAeRiNRPLnET7nsEsEhtzYt+8M
	8xzg==
MIME-Version: 1.0
X-Received: by 10.25.212.209 with SMTP id l200mr8270327lfg.41.1449852068674;
	Fri, 11 Dec 2015 08:41:08 -0800 (PST)
Received: by 10.112.151.42 with HTTP; Fri, 11 Dec 2015 08:41:08 -0800 (PST)
In-Reply-To: <20151211132309.GA15763@mbabyjoh-mobl.fi.intel.com>
References: <CA+KKcbkvhpqXB0vOf=hn-7BTq8maqF6OQwGAH4ph_=H5L=kySg@mail.gmail.com>
	<20151211132309.GA15763@mbabyjoh-mobl.fi.intel.com>
Date: Fri, 11 Dec 2015 17:41:08 +0100
Message-ID: <CA+KKcbmH_ACAMVjf7ETd6DqH5krPPVSkKNRpS_Y66KqFF7rv+A@mail.gmail.com>
From: Federico Pietro Briata <federicobriata@gmail.com>
To: "Maxin B. John" <maxin.john@intel.com>
Cc: yocto@yoctoproject.org,
	=?UTF-8?B?RXJra2EgS8Okw6RyacOk?= <erkka.kaaria@intel.com>
Subject: Re: [meta-java] [PATCH] gnumail: Fix race condition in makefile fail to apply
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
X-List-Received-Date: Fri, 11 Dec 2015 16:41:14 -0000
Content-Type: multipart/alternative; boundary=001a11405ba287c62a0526a1fd17

--001a11405ba287c62a0526a1fd17
Content-Type: text/plain; charset=UTF-8

Hi Maxin,

thanks a lot, after a pull it's working but now I got a different issue.. :/
I'll send a separate email about the current trouble..
Thanks again
Federico


2015-12-11 14:23 GMT+01:00 Maxin B. John <maxin.john@intel.com>:

> Hi Federico,
>
> On Fri, Dec 11, 2015 at 12:45:18PM +0100, Federico Pietro Briata wrote:
> >Hi
> >
> >I just pull to build openjdk-8 and I get this error:
> >
> >ERROR: Command Error: exit status: 1  Output:
> >Applying patch fix_makefile_race_condition.patch
> >patching file Makefile.am
> >Hunk #1 FAILED at 295.
> >1 out of 3 hunks FAILED -- rejects in file Makefile.am
> >Patch fix_makefile_race_condition.patch does not apply (enforce with -f)
> >ERROR: Function failed: patch_do_patch
> >ERROR: Logfile of failure stored in:
> /home/federico/yocto/imx6/R5.0/build-pcm-mx6quad/tmp-eglibc/work/x86_64-linux/gnumail-native/1.1.2-r1/temp/log.do_patch.7775
> >ERROR: Task 613
> (virtual:native:/home/federico/yocto/imx6/R5.0/sources/meta-java/recipes-core/classpathx/
> gnumail_1.1.2.bb, do_patch) failed with exit code '1'
> >
>
> This was due to a nasty encoding related corruption in the patch (most
> likely mangled by
> mail agent). It is fixed in master by a force push (apologies for doing
> that).
>
> Please clone the repo and try again.
>
> >best regards
> >federico
>
> Best Regards,
> Maxin
>

--001a11405ba287c62a0526a1fd17
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Maxin,<br><br></div>thanks a lot, a=
fter a pull it&#39;s working but now I got a different issue.. :/<br></div>=
I&#39;ll send a separate email about the current trouble..<br></div>Thanks =
again<br></div>Federico<br><div><div><br></div></div></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">2015-12-11 14:23 GMT+01:00 Maxin =
B. John <span dir=3D"ltr">&lt;<a href=3D"mailto:maxin.john@intel.com" targe=
t=3D"_blank">maxin.john@intel.com</a>&gt;</span>:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">Hi Federico,<br>
<span class=3D""><br>
On Fri, Dec 11, 2015 at 12:45:18PM +0100, Federico Pietro Briata wrote:<br>
&gt;Hi<br>
&gt;<br>
&gt;I just pull to build openjdk-8 and I get this error:<br>
&gt;<br>
&gt;ERROR: Command Error: exit status: 1=C2=A0 Output:<br>
&gt;Applying patch fix_makefile_race_condition.patch<br>
&gt;patching file Makefile.am<br>
&gt;Hunk #1 FAILED at 295.<br>
&gt;1 out of 3 hunks FAILED -- rejects in file Makefile.am<br>
&gt;Patch fix_makefile_race_condition.patch does not apply (enforce with -f=
)<br>
&gt;ERROR: Function failed: patch_do_patch<br>
&gt;ERROR: Logfile of failure stored in: /home/federico/yocto/imx6/R5.0/bui=
ld-pcm-mx6quad/tmp-eglibc/work/x86_64-linux/gnumail-native/1.1.2-r1/temp/lo=
g.do_patch.7775<br>
&gt;ERROR: Task 613 (virtual:native:/home/federico/yocto/imx6/R5.0/sources/=
meta-java/recipes-core/classpathx/<a href=3D"http://gnumail_1.1.2.bb" rel=
=3D"noreferrer" target=3D"_blank">gnumail_1.1.2.bb</a>, do_patch) failed wi=
th exit code &#39;1&#39;<br>
&gt;<br>
<br>
</span>This was due to a nasty encoding related corruption in the patch (mo=
st likely mangled by<br>
mail agent). It is fixed in master by a force push (apologies for doing tha=
t).<br>
<br>
Please clone the repo and try again.<br>
<br>
&gt;best regards<br>
&gt;federico<br>
<br>
Best Regards,<br>
Maxin<br>
</blockquote></div><br></div>

--001a11405ba287c62a0526a1fd17--
