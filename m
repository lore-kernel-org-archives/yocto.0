Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BEBDE00B5A; Wed, 13 Jan 2016 09:41:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50241E008EE
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:41:45 -0800 (PST)
Received: by mail-pf0-f177.google.com with SMTP id n128so84589085pfn.3
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 09:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=tCd0TtqcP9dJiHSuvrXT0iacjDXKvfKdw9kJ7ARgznM=;
	b=HNz+8nef/6ZF3qf/+BmF34e/dTWi73pok7AiFAOOJk1NYv7XxhIC6PntHbzOavuQL2
	IJ71dXMz0yytvcRw9//sBnwi0fNEUW3oq4CHXTNUzKe9EJlwng+S4vYsLEFLTX5t1rks
	4yfqP7Ta7U/V5eAv7vrKMZ0khNi8kkg47Gz1MwpUNlxtp4JifgsQZO/B1q8Brz4LuKmx
	WI6CSRzR3jYhxTy202x4pU3K8h51VkXxDeuTGL8Y22IoKQqZVeDe3aS+Q4l0T+GeYkOj
	+Kc2DLEEFBY7mo41mYA98MOTqa/v0dKzkdcQk/CJjEwYyDJIMEAoY8Aj8XBjHVCo7ZTU
	Nrzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=tCd0TtqcP9dJiHSuvrXT0iacjDXKvfKdw9kJ7ARgznM=;
	b=MS3um/R3ZYuF3ZzCF3QDNhhZlPywF80DYCehz7H/7IK94fSwkFMNp4oaVJGEVjNFLr
	CdEWFR38+htAehnpDNqfsDYn+DgkCciHEiQ+6hekwXFiQw0BDbrUp55NhwCBuYZB2tP+
	xqxRyzoCYFH/r7On8jzETL6a8QU2nGhWltjs+ZSmzmPKP+e8n6699hEvBTsOtr/QSZX+
	LWmRqZAk6GEU+R83kPbTuDLsYUD0GwbXvacBgUAO7pBG2UvalAqCZM+lJmq9xwPAve4i
	UAM5XV5hmLRdg0CnHx3MuziVGf0dTBpizh/ftxxYqseV8vbMZtCpKnA3CBKvp1iGVlfo
	M8ug==
X-Gm-Message-State: ALoCoQne09KQYB7P6RGbxss3L1/tS4D8lnHwC0asQMgW6cE3Xds8n4jCs8v+30q86vzMGuK6yy5mxLJSfRdHiDMvdzHTcK1dnQ==
X-Received: by 10.98.80.79 with SMTP id e76mr44178070pfb.126.1452706905605;
	Wed, 13 Jan 2016 09:41:45 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:e406:58c9:b337:c1d9?
	([2601:646:8802:5d5c:e406:58c9:b337:c1d9])
	by smtp.gmail.com with ESMTPSA id
	m70sm3927622pfi.90.2016.01.13.09.41.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 13 Jan 2016 09:41:44 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAF5S8SOX78=nAGHhQzxnNFoPP8GgMdrEQDvUrnQH97+CPzkqrw@mail.gmail.com>
Date: Wed, 13 Jan 2016 09:41:44 -0800
Message-Id: <1F18FD34-E817-49BD-8AF0-3F8656BB33D5@gmail.com>
References: <CAF5S8SOmOLVR9gU_=WgxW1fPZNxUyyEqO5j_mH5xsFnr=Ex-Cg@mail.gmail.com>
	<CAMKF1srH4wXuEohCrj3_hxK6=uO-UX0ETjtpnGsMdrc0fUrREg@mail.gmail.com>
	<CAF5S8SOXpLnALCyr-k53HDgfRSnVWtPXKy32sfK9p66Vx+uJeQ@mail.gmail.com>
	<CAF5S8SOX78=nAGHhQzxnNFoPP8GgMdrEQDvUrnQH97+CPzkqrw@mail.gmail.com>
To: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build jffs2 rootfs image in freescale community build
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
X-List-Received-Date: Wed, 13 Jan 2016 17:41:49 -0000
X-Groupsio-MsgNum: 27959
Content-Type: multipart/signed;
	boundary="Apple-Mail=_7EB2B604-EA74-4FC6-9D47-B8CDB6213419";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_7EB2B604-EA74-4FC6-9D47-B8CDB6213419
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1BDF9D20-C180-48A6-BD5A-58331262F7DF"

--Apple-Mail=_1BDF9D20-C180-48A6-BD5A-58331262F7DF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jan 13, 2016, at 4:03 AM, Sarayu Krishna Sivanandam =
<sarayu@zaikenn.com> wrote:
>=20
> hi ,
>=20
> On similar lines i want to rebuild my linux dtb file as i have made =
some changes in my dts file . How can i force it to regenerate the same =
?
>=20
> For example , I use the command bitbake -c compile -f linux-ls1 to =
regenerate the uImage .
>=20
> Is there is similar command for the linux-dtb generation ?

if your kernel recipe is including linux-dtb.inc then it should =
automatically append device tree related activities into standard tasks.

>=20
> Thanks in advance for your help.
>=20
> Thanks and Regards,
> Sarayu K S
> Tech Lead
> Zaikenn Technologies
>=20
> On Tue, Jan 12, 2016 at 3:17 PM, Sarayu Krishna Sivanandam =
<sarayu@zaikenn.com <mailto:sarayu@zaikenn.com>> wrote:
> That worked . Thanks !!
>=20
> Thanks and Regards,
> Sarayu K S
> Tech Lead
> Zaikenn Technologies
>=20
> On Tue, Jan 12, 2016 at 2:12 PM, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
> On Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Sivanandam
> <sarayu@zaikenn.com <mailto:sarayu@zaikenn.com>> wrote:
> > Hi all ,
> >
> > I was initially using the QorIQ-SDK-V1.8 SDK and was using the =
command
> > "bitbake corre-image-full " to generate the full images including =
the uboot
> > , the jffs2 filesystem etc as shown below ,
> >
> > -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46
> > fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2
> >
> >
> > Hoe ever now i have moved to the fsl-community-bsp and want to =
generate the
> > full images . I am uisng the command "bitbake =
core-image-full-cmdline"  as
> > the "core-image-full " command was not available . But it still did =
not
> > generate the individual filesystem types . It generated a filesystem =
file
> > like the below .
> >
> > -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12
> > core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz
> >
> >
> >  Can you please let me know how to generate the jffs2 image in my =
community
> > bsp ? Please let me know what i am missing here .
>=20
> Add IMAGE_FSTYPES +=3D "jffs2" in your local.conf
>=20
> >
> >
> > Thanks in advance for your help.
> >
> > Thanks and Regards,
> > Sarayu K S
> > Tech Lead
> > Zaikenn Technologies
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
> >
>=20
>=20


--Apple-Mail=_1BDF9D20-C180-48A6-BD5A-58331262F7DF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 13, 2016, at 4:03 AM, Sarayu Krishna Sivanandam &lt;<a =
href=3D"mailto:sarayu@zaikenn.com" class=3D"">sarayu@zaikenn.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"gmail_default" =
style=3D"font-family:comic sans ms,sans-serif">hi ,&nbsp;</div><div =
class=3D"gmail_default" style=3D"font-family:comic sans =
ms,sans-serif"><br class=3D""></div><div class=3D"gmail_default" =
style=3D"font-family:comic sans ms,sans-serif">On similar lines i want =
to rebuild my linux dtb file as i have made some changes in my dts file =
. How can i force it to regenerate the same ?</div><div =
class=3D"gmail_default" style=3D"font-family:comic sans =
ms,sans-serif"><br class=3D""></div><div class=3D"gmail_default" =
style=3D"font-family:comic sans ms,sans-serif">For example , I use the =
command bitbake -c compile -f linux-ls1 to regenerate the uImage =
.&nbsp;</div><div class=3D"gmail_default" style=3D"font-family:comic =
sans ms,sans-serif"><br class=3D""></div><div class=3D"gmail_default" =
style=3D"font-family:comic sans ms,sans-serif">Is there is similar =
command for the linux-dtb generation =
?</div></div></div></blockquote><div><br class=3D""></div><div>if your =
kernel recipe is including linux-dtb.inc then it should automatically =
append device tree related activities into standard tasks.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"gmail_default" =
style=3D"font-family:comic sans ms,sans-serif"><br class=3D""></div><div =
class=3D"gmail_default" style=3D"font-family:comic sans =
ms,sans-serif">Thanks in advance for your help.</div></div><div =
class=3D"gmail_extra"><br clear=3D"all" class=3D""><div class=3D""><div =
class=3D"gmail_signature"><div dir=3D"ltr" class=3D""><div class=3D""><div=
 dir=3D"ltr" class=3D""><font face=3D"comic sans ms, sans-serif" =
class=3D"">Thanks and Regards,</font><div class=3D""><font face=3D"comic =
sans ms, sans-serif" class=3D"">Sarayu K S&nbsp;</font></div><div =
class=3D""><font face=3D"comic sans ms, sans-serif" class=3D"">Tech =
Lead&nbsp;</font></div><div class=3D""><font face=3D"comic sans ms, =
sans-serif" class=3D"">Zaikenn =
Technologies</font></div></div></div></div></div></div>
<br class=3D""><div class=3D"gmail_quote">On Tue, Jan 12, 2016 at 3:17 =
PM, Sarayu Krishna Sivanandam <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:sarayu@zaikenn.com" target=3D"_blank" =
class=3D"">sarayu@zaikenn.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_default" style=3D"font-family:comic sans =
ms,sans-serif">That worked . Thanks !!&nbsp;</div></div><div =
class=3D"gmail_extra"><span class=3D""><br clear=3D"all" class=3D""><div =
class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><font face=3D"comic sans ms, =
sans-serif" class=3D"">Thanks and Regards,</font><div class=3D""><font =
face=3D"comic sans ms, sans-serif" class=3D"">Sarayu K =
S&nbsp;</font></div><div class=3D""><font face=3D"comic sans ms, =
sans-serif" class=3D"">Tech Lead&nbsp;</font></div><div class=3D""><font =
face=3D"comic sans ms, sans-serif" class=3D"">Zaikenn =
Technologies</font></div></div></div></div></div></div>
<br class=3D""></span><div class=3D""><div class=3D"h5"><div =
class=3D"gmail_quote">On Tue, Jan 12, 2016 at 2:12 PM, Khem Raj <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:raj.khem@gmail.com" =
target=3D"_blank" class=3D"">raj.khem@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Sivanandam<br class=3D"">
&lt;<a href=3D"mailto:sarayu@zaikenn.com" target=3D"_blank" =
class=3D"">sarayu@zaikenn.com</a>&gt; wrote:<br class=3D"">
&gt; Hi all ,<br class=3D"">
&gt;<br class=3D"">
&gt; I was initially using the QorIQ-SDK-V1.8 SDK and was using the =
command<br class=3D"">
&gt; "bitbake corre-image-full " to generate the full images including =
the uboot<br class=3D"">
&gt; , the jffs2 filesystem etc as shown below ,<br class=3D"">
&gt;<br class=3D"">
&gt; -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46<br class=3D"">
&gt; fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2<br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt; Hoe ever now i have moved to the fsl-community-bsp and want to =
generate the<br class=3D"">
&gt; full images . I am uisng the command "bitbake =
core-image-full-cmdline"&nbsp; as<br class=3D"">
&gt; the "core-image-full " command was not available . But it still did =
not<br class=3D"">
&gt; generate the individual filesystem types . It generated a =
filesystem file<br class=3D"">
&gt; like the below .<br class=3D"">
&gt;<br class=3D"">
&gt; -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12<br class=3D"">
&gt; core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz<br =
class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt;&nbsp; Can you please let me know how to generate the jffs2 image in =
my community<br class=3D"">
&gt; bsp ? Please let me know what i am missing here .<br class=3D"">
<br class=3D"">
</span>Add IMAGE_FSTYPES +=3D "jffs2" in your local.conf<br class=3D"">
<div class=3D""><div class=3D""><br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt; Thanks in advance for your help.<br class=3D"">
&gt;<br class=3D"">
&gt; Thanks and Regards,<br class=3D"">
&gt; Sarayu K S<br class=3D"">
&gt; Tech Lead<br class=3D"">
&gt; Zaikenn Technologies<br class=3D"">
&gt;<br class=3D"">
</div></div><span class=3D""><font color=3D"#888888" class=3D"">&gt; =
--<br class=3D"">
&gt; _______________________________________________<br class=3D"">
&gt; yocto mailing list<br class=3D"">
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D"">
&gt;<br class=3D"">
</font></span></blockquote></div><br class=3D""></div></div></div>
</blockquote></div><br class=3D""></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_1BDF9D20-C180-48A6-BD5A-58331262F7DF--

--Apple-Mail=_7EB2B604-EA74-4FC6-9D47-B8CDB6213419
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaWjFgACgkQuwUzVZGdMxRAcQCfX3G24xawu3fZ0t02vqgzZEqX
aAcAnAgaopy6VeIHPZ6GkRnmXC+GZ1yn
=8oaR
-----END PGP SIGNATURE-----

--Apple-Mail=_7EB2B604-EA74-4FC6-9D47-B8CDB6213419--
