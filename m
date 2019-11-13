Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4061E00DFC; Wed, 13 Nov 2019 10:52:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 207D0E00BF7
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 10:52:10 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id t1so3627070wrv.4
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 10:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=dfZgRRWj5H72M2eVhwCS1LcWxti2hKetJL+cMtlwD/Q=;
	b=e6VRkWDYC/mgCDPi74nHEfxADnHIIF6uAaIevXfR8NzDDmrE7cSskTu5fYprbW7zpF
	4clX0aSQc9h1XrEVihY/Z6/1ZL7gF0GBSubwoiONay0GOiW6q2Lf03KVrgMKXRI4fGqy
	Rvm+4InzFu/gtqd+TiAwzXgE/Gk32sckUDgkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=dfZgRRWj5H72M2eVhwCS1LcWxti2hKetJL+cMtlwD/Q=;
	b=Ss2jB3Ur+7XoMNNrDMETubCwjzEjiVgSMS1sNu9hByij5lAB3lHQIdTuogqSVL72nH
	nqOLT/uJ8cDUDB+hjN5YNp2le2eBa7+Uz8eWnxkR9XPsH9TXbUzw+6Cr2zOiZSRfHao3
	mIW8nuzbOg5g7vJgt2GUKkSVgmwXI63H8chAZd8djdN/6OOOXT79BKMozbB6Z02LuX0l
	A4TlJNBApBB6pWY/Gx6okkWTbu37wKbTNBOwbVuRPDJGHZw3MLFJhwvZeG2Ht02SMPli
	Q3S88rMTvse/2olNJte0SNmgzjwArIb4/gHbSW13wNGI8Dr5UJD6VNZ85991ZopalthF
	4WpQ==
X-Gm-Message-State: APjAAAV9qTpGN9sK5BG1YY7qkkX8LLsTbOSXHxZyr1EOiQ3/uNkobK7X
	VabT2ENMUsrN2E6IegLInLVV7g==
X-Google-Smtp-Source: APXvYqwe/Nufx7w+WMCuXZFSVZz5nh4UxFUzSbiVKiJMpTpGtPPXz+ApB2mHPGpY2xibo5+7om9S4w==
X-Received: by 2002:adf:dc06:: with SMTP id t6mr4423601wri.378.1573671129274; 
	Wed, 13 Nov 2019 10:52:09 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id z9sm3921740wrv.35.2019.11.13.10.52.08
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 13 Nov 2019 10:52:08 -0800 (PST)
Message-ID: <fddb0eb4c0392f0ae427f458cc9684b02444e403.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Samuel Jiang =?UTF-8?Q?=28=E6=B1=9F=E9=A8=8F=E5=85=88=29?=
	<Samuel.Jiang@quantatw.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 13 Nov 2019 18:52:06 +0000
In-Reply-To: <e5a5b73ee91c491086f8ec17fa764507@quantatw.com>
References: <489934f9-1420-40b0-a74a-54b71633bbed@SINGMEHUB07.gme.gbl>
	<KL1P15301MB03443E265CCD3E6492C091CF80630@KL1P15301MB0344.APCP153.PROD.OUTLOOK.COM>
	<a1ef7037a6a94e518fcef16502c67585@quantatw.com>
	<SG2P153MB0349D0EFB059BC372C86528880630@SG2P153MB0349.APCP153.PROD.OUTLOOK.COM>
	<9e5ccabd-03be-410b-bd43-1f7ba45dff31@Spark>
	<a2982b3de70f74fd787b45b06711437afd2ae98e.camel@linuxfoundation.org>
	<a066f24b71df426db88ce23b46331a36@quantatw.com>
	<85cc536d4ce5de2606d48aba4b813fa96be1f6f9.camel@linuxfoundation.org>
	<e5a5b73ee91c491086f8ec17fa764507@quantatw.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: Alex Chong <v-chucho@microsoft.com>
Subject: Re: bitbake SRC_URI fetch Azure DevOps repository Azure DevOps Services Basic
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
X-List-Received-Date: Wed, 13 Nov 2019 18:52:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2019-11-13 at 09:02 +0000, Samuel Jiang (江騏先) wrote:
> I got below error message:
> crashdump-git-r0 do_fetch: Fetcher failure: Fetch command export PSEUDO_DISABLED=1; unset _PYTHON_SYSCONFIGDATA_NAME; export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"; export SSH_AGENT_PID="2255"; export SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export PATH="[private_data]"; export HOME="/home/samueljiang";
> git -c core.fsyncobjectfiles=0 ls-remote git://quanta01.visualstudio.com/OpenBMC/_git/crashdump  failed with exit code 128, output:
> fatal: unable to connect to quanta01.visualstudio.com:
> quanta01.visualstudio.com[0: 2620:1ec:21::18]: errno=Network is unreachable
> quanta01.visualstudio.com[1: 13.107.42.18]: errno=Connection timed out
> 
> Seems this url with git:// prefix could not connect in Azure DevOps 
> 
> Document[https://docs.microsoft.com/en-us/azure/devops/repos/git/use-ssh-keys-to-authenticate?view=azure-devops].

I now realise what the problem is. Whatever this git server you're
talking to is, it does not work the same as is documented for the "git
clone" manpage.

There is no option to force bitbake to use the syntax you're asking for
since the manpage says the synax its using is valid. You could patch
bitbake to force it to use that syntax with a patch like:

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index fa41b078f12..f20c1f36b82 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -588,6 +588,8 @@ class Git(FetchMethod):
             username = ud.user + '@'
         else:
             username = ""
+        if ud.proto == "ssh":
+            return "%s%s:%s" % (username, ud.host, ud.path[1:])
         return "%s://%s%s%s" % (ud.proto, username, ud.host, ud.path)
 
     def _revision_key(self, ud, d, name):


which in my local tests appeared to give the result you're asking for
but that shouldn't be required with a server that adheres to what the
git manual says is supported.

Cheers,

Richard


