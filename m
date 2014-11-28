Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 592A3E00970; Fri, 28 Nov 2014 05:23:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B79BAE0082F
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 05:23:52 -0800 (PST)
Received: by mail-wi0-f177.google.com with SMTP id l15so11220156wiw.10
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 05:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Pzr0UbEqVDmAdy4mCgFe5cnNBp6HmEp4p1b3x5YZIaI=;
	b=xt4gPX/EjyK+hxTxmvGWca7pFm/Fe7GD0TIxaSP33G1NMVYYGrawPJPeqzAZ22PuqA
	z1n1mF7G3oL5c3J1izOitQ5yqF4xT/MumWKPRXdJq1lOzge6OAdswiLS0hZpr9wtFRae
	3fywXb1hofXA17mOCfCE9Se9di9NiOVN+bewZQGeEISgFHY60BJ9/jwXtG2LtR6X8uXY
	N5/qSpd4CDBx5F1d6nXk8FjRCDkt/A7bz53XTv5Thj19WTvsuBiIDJNixHN58URsTNWA
	V2as0in3kZUfAVEoAln4CL2+Ac9ol5e19Xo9YzTm2Irqx8hd1aNIMkb0eMG1gA14g5YQ
	yD4A==
X-Received: by 10.180.73.206 with SMTP id n14mr37749526wiv.60.1417181031946;
	Fri, 28 Nov 2014 05:23:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.10.11 with HTTP; Fri, 28 Nov 2014 05:23:31 -0800 (PST)
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A69@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A67@MSSRVS5.atlas.de>
	<CAGiJk9eNcBVFPRKG92WdwGC=ysWDX2m2F9qHr2uLxQP6i90WRA@mail.gmail.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A68@MSSRVS5.atlas.de>
	<CAGiJk9c-w9Jwx6McyjkjWq9yo80zU2bNwRiRY=Os9_eJ3KJO8Q@mail.gmail.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A69@MSSRVS5.atlas.de>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Fri, 28 Nov 2014 14:23:31 +0100
Message-ID: <CAGiJk9efNDb9DurbgV892bwM69tn3jH52UpDj15RZbKT8OZuog@mail.gmail.com>
To: Matthias.Heise@atlas-elektronik.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_fetch linux hangs after defconfig/conf-fragment change
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
X-List-Received-Date: Fri, 28 Nov 2014 13:23:56 -0000
Content-Type: text/plain; charset=UTF-8

2014-11-28 14:09 GMT+01:00  <Matthias.Heise@atlas-elektronik.com>:
>
> I made the git setting to replace git:// with https:// which at least worked once ...
> But when trying to clone as you suggested I'm asked for username and password for github.com !?
>

Strange, it works for me... takes some time but doesn't ask for
username/password.




-- 
Regards
Samuel

