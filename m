Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB35AE00C3A; Mon, 11 Sep 2017 01:38:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8872CE00C01
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 01:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default;
	h=To:References:Message-Id:Cc:Date:In-Reply-To:
	From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jQE6T/A7thpHUk5GmSX6VJp5sxpX9DBE05hELMw0mY4=;
	b=JzBud1shglTnguOko5kfuWc6h
	rtszf0H6RazW5IE+pQ3XjQPGojciMlmoYAkAM4GShGCghbqfTGmRKGcZhPavbTj3T/8ZfN71AEX+Y
	BrKIEAFn/gqJPZ8fOuXq1Mq2Za8wYCjh2jzZlNlWY96OJVIm8CSDyLOZhrVVS0O4DfrE0=; 
Received: from durham.keylevel.com ([212.159.18.174]:62229
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.89) (envelope-from <opensource@keylevel.com>)
	id 1drKEE-003CRh-A4; Mon, 11 Sep 2017 09:38:02 +0100
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CANxWOTa28uL3HoPvU5mU54XB1HMpxu_iskSZH1gdBB=ugEcMtA@mail.gmail.com>
Date: Mon, 11 Sep 2017 09:38:09 +0100
Message-Id: <744F5E96-6FA0-4C7E-BE48-C1C4E9E75231@keylevel.com>
References: <CANxWOTbROX_e50FqD_oV9=3KTnxHik2jgDP98rRWq2A09QaNeg@mail.gmail.com>
	<b59f7241-632a-0801-1dce-ade844162f23@dynamicdevices.co.uk>
	<6353963F-63D3-413E-B685-72A56004CBA9@keylevel.com>
	<CAJTo0LbEg7M0FfhJ7bFzr+B3DSprTXVD=jp6oMkiyKP8+wARzg@mail.gmail.com>
	<CANxWOTa28uL3HoPvU5mU54XB1HMpxu_iskSZH1gdBB=ugEcMtA@mail.gmail.com>
To: Usman Haider <usmanhaider89@gmail.com>
X-Mailer: Apple Mail (2.3124)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Suitable machine for yocto
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
X-List-Received-Date: Mon, 11 Sep 2017 08:38:07 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5FD25937-9CA7-44B6-93C0-6967D75D52AF"

--Apple-Mail=_5FD25937-9CA7-44B6-93C0-6967D75D52AF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On 11 Sep 2017, at 09:24, Usman Haider <usmanhaider89@gmail.com> =
wrote:
>=20
>=20
>=20
> On Mon, Sep 11, 2017 at 1:21 PM, Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>> wrote:
> On 10 September 2017 at 12:00, Chris Tapp <opensource@keylevel.com =
<mailto:opensource@keylevel.com>> wrote:
> I have a similar spec, except I use an SSD for the build area and only =
16GB RAM (I don=E2=80=99t see more than about 12GB used during a build) =
- a build from scratch (excluding download time) takes just under an =
hour.
>=20
> The thing to remember with SSDs is that builds can write *a lot* of =
data and this can destroy SSDs faster than you'd like.
>=20
> Personally I find lots of RAM more cost effective.  If you've got a =
moderate amount then a slow commit time in fstab lets the kernel batch =
writes wisely.  If you've got plenty of RAM (my machine has 64GB) then a =
good sized tmpfs (32GB here) mounted at TMPDIR (the local.conf setting, =
not /tmp) in with rm_work means you literally have no I/O latency.  To =
persist files either copy them out or for example set DEPLOY_DIR to a =
real disk.
>=20
> Ross
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>=20
>=20
>=20
> Thanks,
>=20
> I'll consider this too. A lot of techincal stuff to learn here on this =
mailing list :)

One thing you=E2=80=99ll find here is a lot of very knowledgable people =
who go out of their way to help as much as possible - got me going from =
a cold start very, very quickly :-)

A really good example of an excellent opensource project / community.

> Regards,
> Usman

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_5FD25937-9CA7-44B6-93C0-6967D75D52AF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 11 Sep 2017, at 09:24, Usman Haider &lt;<a =
href=3D"mailto:usmanhaider89@gmail.com" =
class=3D"">usmanhaider89@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><br class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On Mon, Sep 11, 2017 at 1:21 PM, Burton, Ross =
<span dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:ross.burton@intel.com" =
target=3D"_blank" class=3D"">ross.burton@intel.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D""><span class=3D"">On 10 September 2017 at 12:00, Chris Tapp =
<span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:opensource@keylevel.com" target=3D"_blank" =
class=3D"">opensource@keylevel.com</a>&gt;</span> wrote:<br =
class=3D""></span><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><span class=3D""><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">I have a similar spec, except I use an SSD for =
the build area and only 16GB RAM (I don=E2=80=99t see more than about =
12GB used during a build) - a build from scratch (excluding download =
time) takes just under an hour.<br class=3D""></blockquote><div =
class=3D""><br class=3D""></div></span><div class=3D"">The thing to =
remember with SSDs is that builds can write *a lot* of data and this can =
destroy SSDs faster than you'd like.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Personally I find lots of RAM more cost =
effective.&nbsp; If you've got a moderate amount then a slow commit time =
in fstab lets the kernel batch writes wisely.&nbsp; If you've got plenty =
of RAM (my machine has 64GB) then a good sized tmpfs (32GB here) mounted =
at TMPDIR (the local.conf setting, not /tmp) in with rm_work means you =
literally have no I/O latency.&nbsp; To persist files either copy them =
out or for example set DEPLOY_DIR to a real disk.</div><span =
class=3D"HOEnZb"><font color=3D"#888888" class=3D""><div class=3D""><br =
class=3D""></div><div =
class=3D"">Ross</div></font></span></div></div></div>
<br class=3D"">--<br class=3D"">
______________________________<wbr class=3D"">_________________<br =
class=3D"">
yocto mailing list<br class=3D"">
<a href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/yocto</a><br class=3D"">
<br class=3D""></blockquote></div><br class=3D""><br class=3D""></div><div=
 class=3D"gmail_extra">Thanks,<br class=3D""><br class=3D""></div><div =
class=3D"gmail_extra">I'll consider this too. A lot of techincal stuff =
to learn here on this mailing list :)<br =
class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>One thing you=E2=80=99ll find here is a lot of =
very knowledgable people who go out of their way to help as much as =
possible - got me going from a cold start very, very quickly =
:-)</div><div><br class=3D""></div><div>A really good example of an =
excellent opensource project / community.</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D"gmail_extra">Regards,</div><div class=3D"gmail_extra">Usman<br =
class=3D""></div></div>
</div></blockquote></div><br class=3D""><div class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; font-variant-ligatures: normal; font-variant-position: normal; =
font-variant-numeric: normal; font-variant-alternates: normal; =
font-variant-east-asian: normal; line-height: normal; border-spacing: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D""><div =
class=3D"">--</div><div class=3D""><br class=3D""></div><div =
class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a></div><div=
 class=3D""><br class=3D""></div><div class=3D"">----</div><div =
class=3D"">You can tell you're getting older when your car insurance =
gets real cheap!</div></div></span></div></div></div></div>
</div>
<br class=3D""></body></html>=

--Apple-Mail=_5FD25937-9CA7-44B6-93C0-6967D75D52AF--
