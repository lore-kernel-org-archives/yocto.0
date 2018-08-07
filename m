Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07FCDE00875; Tue,  7 Aug 2018 09:16:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 893A2E00A39
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2018 09:16:22 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id w126-v6so29412420oie.7
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2018 09:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=H5lBxnKvEpEfdYF1bNkZgVmP28aHRaQQSz6YN1ux7vg=;
	b=yO/tr8BCqtG2wTguATLJW27LckJOGeKSqAlU9n4cYwihcKS0zAAnTl+ajT2hNVqfDJ
	tHtemajBBPnqlmS4BjO85MJbLJ4qGWThlEYL0MqVJ/H8Gn03lfihztDW/orjqX9iXTpq
	7acI+AYQdHPBf/dhpbrV+UN0KLAOU3+jR9BKKDSpmb//W3AjwZbkResMMI2OK8T2o7rl
	Ad/h7SyCMbECkXMrB4hDtIJ9n8pSyMZknxmwW5IWP++oplXuAnKMVhM+Yw2ewBXkvMhe
	nwdwh/SCkSvJg2BbEhE3Xnmlm1EaG9dUodHzGRdgjxCYVWkG0MtIPnEBuCFUp3RyRG1H
	VXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=H5lBxnKvEpEfdYF1bNkZgVmP28aHRaQQSz6YN1ux7vg=;
	b=UvFIf1LtnzabA6SY8kZ1f0mMOowfYsk3zDgiWrU1RKBUs8nv5Ki6FAmOsfCBNbk1rH
	q1MBy9ZIS74uP0UnxM5SEOcyC0dIpyt1xkY9WI2pQpQq9u0XXJxxBoWQvg90iAXY8I5y
	cNosvUZCbcO8Uy97uBjT/CU9u91Os8LlcxzSuCY990eOeMQDNSUmF2+N9LRFHKNo/gCN
	4G9FmQaFmuvy6Z6R/WkNrjcdiRo4onEuIckK21S45Sej+0AogF8Zk5xrzJAWXQSwyrht
	hSjd6WU7bdyxlt4oRTkhs3S+hRAICuMtpl4SzqsiBwfcg3j9JY34BE8+8KVUBgo9GqRA
	XVhw==
X-Gm-Message-State: AOUpUlH/81rRc7G23DvR24EeJ0dQWdpDLAiustjzkdM6oewZzFl0TKGc
	3/x+Ay/qBTT0rw4FIRnP5ORTgoIXVaUzKUTAVWuqyHL8StM=
X-Google-Smtp-Source: AA+uWPwP3F93Qom+5xzMqUhECqsymH9b9owAQfaFhqIidQbgZ6qV1516IAZzkCQFwkunwEut9z20lfazSxYVcyoWBPY=
X-Received: by 2002:aca:5dc5:: with SMTP id
	r188-v6mr20156405oib.320.1533658581816; 
	Tue, 07 Aug 2018 09:16:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP;
	Tue, 7 Aug 2018 09:16:01 -0700 (PDT)
In-Reply-To: <VI1PR0501MB232004ED38D6B26C71CF66D4B8270@VI1PR0501MB2320.eurprd05.prod.outlook.com>
References: <VI1PR0501MB2320523BE7412E38D0AB4525B82F0@VI1PR0501MB2320.eurprd05.prod.outlook.com>
	<CAJTo0LawozrqGb4TsVFz+NzKyNGb-G96vYopsHNXvcJVj_DnDA@mail.gmail.com>
	<VI1PR0501MB23209F21F954AA6AA3A0D7F0B82C0@VI1PR0501MB2320.eurprd05.prod.outlook.com>
	<VI1PR0501MB232004ED38D6B26C71CF66D4B8270@VI1PR0501MB2320.eurprd05.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Aug 2018 17:16:01 +0100
Message-ID: <CAJTo0LZeHJjqtn-rODXHeUQV0Ne=NmcX1GGwcTZDz6nkSA9Lyw@mail.gmail.com>
To: Erik Nellessen <enellessen@phoenixcontact.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Non-deterministic build error in package gcc-source
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
X-List-Received-Date: Tue, 07 Aug 2018 16:16:51 -0000
Content-Type: multipart/alternative; boundary="000000000000f9ec010572dab6ec"

--000000000000f9ec010572dab6ec
Content-Type: text/plain; charset="UTF-8"

> Anyhow I would still like to report the bug. Are there any other ways
than using Bugzilla?

No, bugzilla is the only bug tracking system for oe-core.

Ross

--000000000000f9ec010572dab6ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><p style=3D"margin-top:0px;marg=
in-bottom:0px;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif;fon=
t-size:16px">&gt; Anyhow I would still like to report the bug. Are there an=
y other ways than using Bugzilla?<br></p><div><br></div><div>No, bugzilla i=
s the only bug tracking system for oe-core.</div><div><br></div><div>Ross</=
div></div></div>

--000000000000f9ec010572dab6ec--
