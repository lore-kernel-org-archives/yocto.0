Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D010CE00747
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 23:24:49 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id ma3so1361008pbc.21
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 23:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=UcdI9z/CmExUuBpBGqVICLIGO61Yxklc4azY1tzaucc=;
	b=iHeege60YZ2A9HqkrqAAOGrbo+Xl+V0696cpi+7aCDSEz+DQGP2HfxuTjxbN+BavwH
	6GXJ57Zq/IMDZiQP90ldlJgtJGs4nukYqolSNf6uYqjCbmfIF/5/iMPBMknzAD3pd6Bm
	ldfJMfiuDuPV6arDBfZ8pgy6rH4XnhP/d8L9aTfXvR6Iad+JAKYtAF/F0opPS7/c+3jR
	gvlaQ1HPGb9CUTcT1u6IJqRY+kXAfin246q/CGTmgwMUjEzrW5ikA5ADeiTAtN49DXae
	9v5gzKJMrSC/QPEpdCzPb0v6Cbm9B3+5Nsto5MjmhCWKzCONYwPNTyXT6oibU09qzssQ
	B6sQ==
X-Received: by 10.66.189.194 with SMTP id gk2mr3651387pac.166.1377152688935;
	Wed, 21 Aug 2013 23:24:48 -0700 (PDT)
Received: from sa-nc-finance-109.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	ia5sm12645226pbc.42.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 21 Aug 2013 23:24:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAAGt+t2vcs0kGnx0DHDTiaxVbw3KUJxYazfPA4OH=+pKb-sKDA@mail.gmail.com>
Date: Wed, 21 Aug 2013 23:24:47 -0700
Message-Id: <179AD690-E125-4D00-B1FA-41698005F9C0@gmail.com>
References: <CAAGt+t0Y-qo5Xo3s13LAf0mK+yc2ytTPmr1KWUThVDiWvFHcaw@mail.gmail.com>
	<CAAfyv356HsJ=AmNXE+p_LvSQNEUu5B8cFKwkrXLxdDc6Js+omA@mail.gmail.com>
	<CAAGt+t2vcs0kGnx0DHDTiaxVbw3KUJxYazfPA4OH=+pKb-sKDA@mail.gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: MD5SUM recipe error.
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
X-List-Received-Date: Thu, 22 Aug 2013 06:24:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5BA50B3E-F8A4-4909-946A-CCFE93F1C409"

--Apple-Mail=_5BA50B3E-F8A4-4909-946A-CCFE93F1C409
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Aug 20, 2013, at 4:56 AM, Zafrullah Syed <zafrullahmehdi@gmail.com> =
wrote:

> MD5SUM error got solved.
>=20
> When I build I get again this error:
>=20
> ERROR: Nothing RPROVIDES 'ntp-systemd' (but =
/home/zaif/yocto/poky/meta-gumstix/recipes-images/gumstix/gumstix-console-=
image.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'ntp-systemd' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['ntp-systemd']
> ERROR: Required build target 'gumstix-console-image' has no buildable =
providers.
> Missing or unbuildable dependency chain was: ['gumstix-console-image', =
'ntp-systemd']
>=20
> Any Ideas?


it seems you need meta-openembedded/meta-networking layer=20


--Apple-Mail=_5BA50B3E-F8A4-4909-946A-CCFE93F1C409
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Aug 20, 2013, at 4:56 AM, Zafrullah Syed &lt;<a href="mailto:zafrullahmehdi@gmail.com">zafrullahmehdi@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr">MD5SUM error got solved.<div><br></div><div>When I build I get again this error:</div><div><br></div><div><div>ERROR: Nothing RPROVIDES 'ntp-systemd' (but /home/zaif/yocto/poky/meta-gumstix/recipes-images/gumstix/<a href="http://gumstix-console-image.bb/">gumstix-console-image.bb</a> RDEPENDS on or otherwise requires it)</div>

<div>NOTE: Runtime target 'ntp-systemd' is unbuildable, removing...</div><div>Missing or unbuildable dependency chain was: ['ntp-systemd']</div><div>ERROR: Required build target 'gumstix-console-image' has no buildable providers.</div>

<div>Missing or unbuildable dependency chain was: ['gumstix-console-image', 'ntp-systemd']</div></div><div><br></div><div>Any Ideas?</div></div></blockquote><div><br></div><div><br></div>it seems you need meta-openembedded/meta-networking layer&nbsp;<br></div><br></body></html>

--Apple-Mail=_5BA50B3E-F8A4-4909-946A-CCFE93F1C409--
