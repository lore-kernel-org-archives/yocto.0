Return-Path: <allenkll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA9C8E0074B; Tue, 22 Jul 2014 08:51:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13D81E007B9
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 08:51:33 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id u56so9361498wes.0
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 08:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=YUYS77bHgbPbfDWdcHfJ1jG9Idnk0Mwztozpn9tlWF8=;
	b=sVlPnIKXhH/0dUnn9TtCb8WspSty+x9mdqBXQypqVei7z7FH3K0RjgsGI/96tcNzkm
	V38KYgUArTJW+DmN9/qHU2Q5iQ/EJDl4FS9C6JmoR6GN027h1oNbewHnq1EpbXFpSEBL
	csHlPwrT9ETlTZzy+k9Jn+161Rc34CLZY0csOfC4qzlCH5foFph94Q4YkjaF8fzo9Nvb
	yBYqNjD0dcp+W8AHfLXojkdFUDETee/K2+/wuY7ZxIwmWTA4UK8ue8zUYclDAdmy2XuA
	Si7KY3lCyQDtZZvNjrhWuADomFzSETh9A0WSUjUXgmodJdErvB3OfvFADda8D25BPxSJ
	y6zQ==
MIME-Version: 1.0
X-Received: by 10.194.205.65 with SMTP id le1mr35660334wjc.67.1406044290971;
	Tue, 22 Jul 2014 08:51:30 -0700 (PDT)
Sender: allenkll@gmail.com
Received: by 10.216.186.134 with HTTP; Tue, 22 Jul 2014 08:51:30 -0700 (PDT)
In-Reply-To: <CABcZANk2U6p4RzqNF8WptVgpZ63MVDTLsgHY36__W4bB2vK-RQ@mail.gmail.com>
References: <1406029381.16746.16.camel@localhost.localdomain>
	<CABcZANk2U6p4RzqNF8WptVgpZ63MVDTLsgHY36__W4bB2vK-RQ@mail.gmail.com>
Date: Tue, 22 Jul 2014 10:51:30 -0500
X-Google-Sender-Auth: zR57CzYvFb_srkiXDCVLq3KMCL8
Message-ID: <CAO-21LOFJeSgL0ZSH2Y+O+9xz85NB0gCBD059wQhNWNOC0H6tQ@mail.gmail.com>
From: "Allen Kennedy Jr." <allen@kennedystuff.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: read only rootfs & systemd
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
X-List-Received-Date: Tue, 22 Jul 2014 15:51:58 -0000
Content-Type: multipart/alternative; boundary=047d7bb04930807d1404feca32ec

--047d7bb04930807d1404feca32ec
Content-Type: text/plain; charset=UTF-8

Christopher,
  Thanks for the information.  I too have been looking for this.

It seems odd to me that this build system that is designed for an embedded
device, doesn't have this feature by default.


On Tue, Jul 22, 2014 at 10:44 AM, Christopher Larson <clarson@kergoth.com>
wrote:

>
> On Tue, Jul 22, 2014 at 4:43 AM, Maciek Borzecki <
> maciej.borzecki@open-rnd.pl> wrote:
>
>> Is read-only-rootfs supported on systemd setups?
>>
>> The current dev manual is not clear about this. Also in image.bbclass
>> there are comments that read_only_rootfs_hook supports only sysvinit
>> setups.
>>
>
> Not in oe-core, no. https://github.com/MentorEmbedded/meta-ro-rootfs is
> how we're handling it at mentor today, we haven't gotten around to pursuing
> an upstream solution, whether integration of this or something else, as of
> yet. If you follow the instructions at
> https://github.com/MentorEmbedded/meta-ro-rootfs#usage it should work
> fine for you.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7bb04930807d1404feca32ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Christopher, <br></div>=C2=A0 Thanks for the inf=
ormation.=C2=A0 I too have been looking for this.<br><br></div>It seems odd=
 to me that this build system that is designed for an embedded device, does=
n&#39;t have this feature by default.<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue,=
 Jul 22, 2014 at 10:44 AM, Christopher Larson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&g=
t;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D""><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Jul 22, 2014 at 4:4=
3 AM, Maciek Borzecki <span dir=3D"ltr">&lt;<a href=3D"mailto:maciej.borzec=
ki@open-rnd.pl" target=3D"_blank">maciej.borzecki@open-rnd.pl</a>&gt;</span=
> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow:hi=
dden">Is read-only-rootfs supported on systemd setups?<br>

<br>
The current dev manual is not clear about this. Also in image.bbclass<br>
there are comments that read_only_rootfs_hook supports only sysvinit<br>
setups.</div></blockquote></div><br></div></div><div class=3D"gmail_extra">=
Not in oe-core, no. <a href=3D"https://github.com/MentorEmbedded/meta-ro-ro=
otfs" target=3D"_blank">https://github.com/MentorEmbedded/meta-ro-rootfs</a=
> is how we&#39;re handling it at mentor today, we haven&#39;t gotten aroun=
d to pursuing an upstream solution, whether integration of this or somethin=
g else, as of yet. If you follow the instructions at <a href=3D"https://git=
hub.com/MentorEmbedded/meta-ro-rootfs#usage" target=3D"_blank">https://gith=
ub.com/MentorEmbedded/meta-ro-rootfs#usage</a> it should work fine for you.=
<span class=3D"HOEnZb"><font color=3D"#888888"><br>


-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</font></span></div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7bb04930807d1404feca32ec--
