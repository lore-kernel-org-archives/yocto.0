Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D083E0090E; Wed, 12 Dec 2018 09:05:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD50CE00872
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 09:05:04 -0800 (PST)
Received: by mail-io1-f46.google.com with SMTP id w21so1702033ioc.1
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 09:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=vnem5DlzQJOQhJHFRa3Fx8uv41EJwH0FDxSPYZrgEUg=;
	b=UYZQVuFrE8AFfxm4f+ZxuL8qd5+wgxbx2BWlrfN6SBfCPq+pT9qegsZXy1dSEUvRnu
	0FXv2a6xMlv5IQ86wpuJD+qdzblvwdXQldkeJPOqjwbt8mwFGlPOp/kfSPLNL5kEgYdG
	OGdZXrOwQmh2GpVIcVFyVOJAJnPahaQdxchBOIx7RS1Zwc+Xj+EePPeo9DOhH2Q+72MU
	YM4SVM9CFkH+vyP9tIHIqfiupYC6UtgaTlCSwoNML+opOz/LEybaPC/lr8jWAPjua9DL
	EwYFJTh/LJo9CVp4Lzn79upxxUMHoTLzctTAL8behsS0rkY7BTChBEzvAflYK4FRWi2p
	3NDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=vnem5DlzQJOQhJHFRa3Fx8uv41EJwH0FDxSPYZrgEUg=;
	b=kOBNH7kQpHLhyzASod9YiiOL6mqH29+fU9nN7Y8pk0LOVs7XlDpbz95MaBomvyGk0B
	hcpJdA0TcRZvLBdYaYe0TRwplNYsgrbQK11yC3pnYjV7O+z7X5a8WsVMZzub+aQF+7aS
	g0YRBRjRQd0xkBoJNaKMqmSjVJmIE+Rm7orJKdUzg/fz8dk5yAm/sWZlHTtu9VQcTcgJ
	aIcE+nom/1PjSZhjkn5T7MiuJAnhm+ZqfvgWHlTxW0C10250BmTZA6zAM8OB9kgZ0DsF
	jUfs3sDrzcKBQefyitJ97kIYXIUcTpC7Pwvnpb2W7AOTRY/KzNK5vZUh5QRXBh5/UEAB
	25sA==
X-Gm-Message-State: AA+aEWY9lRFzpf/T9KHGR3OqIL5mUGuKP/PaRk2dmIV/4Xst2xEQR0Zb
	xnnqzWhFUwXnrwXbD5C9rV1bg8bl4DmsuBoDOII5U8wk
X-Google-Smtp-Source: AFSGD/WUBcqqZ9pcjqNVVav0VdKkBo4ZdtiwKh2/ldIOE1nzZ4cYTXtwLAswCYoih/RHJDGND0Za03rTtBhh6u0L3fE=
X-Received: by 2002:a6b:acc5:: with SMTP id v188mr16675391ioe.20.1544634298595;
	Wed, 12 Dec 2018 09:04:58 -0800 (PST)
MIME-Version: 1.0
References: <CAFqpmVKxkvP5_UVrmyjowCpCYf12ymoLD1ii3uYZ0q8GsJnYzA@mail.gmail.com>
In-Reply-To: <CAFqpmVKxkvP5_UVrmyjowCpCYf12ymoLD1ii3uYZ0q8GsJnYzA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 12 Dec 2018 17:04:47 +0000
Message-ID: <CAJTo0LZt+h7cwzZTO9+gqtFhCnfXPKvRZQJF+i8HU=+pbdwtdQ@mail.gmail.com>
To: niko.tsirakis@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Quick confirmation about multilib
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
X-List-Received-Date: Wed, 12 Dec 2018 17:05:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 12 Dec 2018 at 16:59, Nicholas Tsirakis <niko.tsirakis@gmail.com> w=
rote:
> I'm trying to build a 32-bit toolchain for my 64-bit image using multilib=
 and was hoping someone could confirm something for me. I am seeing issues =
when building lib32-glibc, and I can't tell if it's attempting to build pro=
perly. The resulting build files are created in a folder called "x86_64-oem=
llib32-..." - is this correct? Or should it be "x86-oemllib32" being that i=
t's a 32-bit library?

Can you clarify here was should be 32-bit and what should be 64-bit?

Ross

