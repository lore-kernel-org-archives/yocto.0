Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4121.1582198566826179896
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 03:36:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=f1muE3kA;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58127E015FF; Thu, 20 Feb 2020 03:36:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E88F7E00C5B
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 03:36:03 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id m16so4192910wrx.11
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 03:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=WN388nd0o1gmu0xud4GQiK3uIjFrBprJoI0/qOui518=;
        b=f1muE3kAi/7S/7SFR9vtBbjOuc0bt3UHcx/ngHOCmpqJAt4WzGZYjJ2IYZaajjMtEp
         e9EptWevyx+DSVBhRORb2e9mSB8Z+Rdqrec7T4LgkM9UCKNwaCIV6h2vb6S/wu5H++0g
         MJQNvi2yADNv3WGuXf+0EyX2+GdNu8o5Ng40M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=WN388nd0o1gmu0xud4GQiK3uIjFrBprJoI0/qOui518=;
        b=WXQ0EKmdyQYoDz5NP4Rr7GjvCjvk6ed2bAHuOQgyNTBaFokNCvQYDRLD5VHGjeAVQ0
         CA7C8mMLEn19CFeIuWsz5sDczg66W6j5/Nkcc6V2yyvtlXinG381O44BOtJJA8VO7rPR
         6HeH+Gl9NKoxiCJ3c8dDEIsI4T4jGMxaJGQd7Y7xtm0KIoJSsYbkEEwzXflb1sxaTuqf
         JIByhqzyQn4qVvy9jFVDzTuw0uuFxpUFAulJ6PkNZy5lNgiXlX1fjAXXEjQPANerP120
         Uc1PCEKtN11tn+nCnl8lBD6FTMNbFjyngIFY1d1oTBXFi0n//N5fVqopaFwSwpEKrZv1
         1q2w==
X-Gm-Message-State: APjAAAWBcSfz0RBN3c4xX7jSlPOIlS0peVzQ+YZcPriZbKXKlV5pqVd0
	42brj1c9U92FDhJmmmBODfQrQPSCOdg=
X-Google-Smtp-Source: APXvYqxgHKW7c5JserK2UJ3kHbP1+8xpQdZYMoi2nmBESLm9pcUBTaUOe8A+xcUvrBw+EueYW/7eMA==
X-Received: by 2002:adf:e683:: with SMTP id r3mr44365430wrm.38.1582198563054;
        Thu, 20 Feb 2020 03:36:03 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id a9sm4481340wrn.3.2020.02.20.03.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 03:36:02 -0800 (PST)
Message-ID: <bfe6eb79ff352439c3ed5d53757421dce5e0b17d.camel@linuxfoundation.org>
Subject: Re: [yocto] Bitbake returning non-zero due to sstate errors
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Paul Barker <pbarker@konsulko.com>, Yocto discussion list
	 <yocto@yoctoproject.org>
Date: Thu, 20 Feb 2020 11:36:01 +0000
In-Reply-To: <CAM9ZRVvDHTvvKr1Tdc+C1ZdTv2DSX8JJ9bYhHc0c-wre4qg5LA@mail.gmail.com>
References: 
	<CAM9ZRVvDHTvvKr1Tdc+C1ZdTv2DSX8JJ9bYhHc0c-wre4qg5LA@mail.gmail.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-02-20 at 11:26 +0000, Paul Barker wrote:
> In my new CI setup I'm using an sstate mirror which seems to have
> some
> occasional download issues. This results in the setscene task
> failing.
> For example:
> 
> ERROR: qt3d-5.13.2+gitAUTOINC+93361f1a59-r0
> do_package_write_ipk_setscene: Fetcher failure: Unable to find file
> file://fd/sstate:qt3d:armv7at2hf-neon-linux-
> gnueabi:5.13.2+gitAUTOINC+93361f1a59:r0:armv7at2hf-
> neon:3:fda6c3edff0205b07ff176cf16771247117fa310bc65a6a1df6befc4230e0a
> 74_package_write_ipk.tgz;downloadfilename=fd/sstate:qt3d:armv7at2hf-
> neon-linux-gnueabi:5.13.2+gitAUTOINC+93361f1a59:r0:armv7at2hf-
> neon:3:fda6c3edff0205b07ff176cf16771247117fa310bc65a6a1df6befc4230e0a
> 74_package_write_ipk.tgz
> anywhere. The paths that were searched were:
>     /builds/SanCloudLtd/sancloud-arago/build/sstate-cache
>     /builds/SanCloudLtd/sancloud-arago/build/sstate-cache
> ERROR: qt3d-5.13.2+gitAUTOINC+93361f1a59-r0
> do_package_write_ipk_setscene: No suitable staging package found
> ERROR: Logfile of failure stored in:
> /builds/SanCloudLtd/sancloud-arago/build/tmp/work/armv7at2hf-neon-
> linux-gnueabi/qt3d/5.13.2+gitAUTOINC+93361f1a59-
> r0/temp/log.do_package_write_ipk_setscene.10524
> NOTE: recipe qt3d-5.13.2+gitAUTOINC+93361f1a59-r0: task
> do_package_write_ipk_setscene: Failed
> WARNING: Setscene task
> (/builds/SanCloudLtd/sancloud-arago/sources/meta-qt5/recipes-
> qt/qt5/qt3d_git.bb:do_package_write_ipk_setscene)
> failed with exit code '1' - real task will be run instead
> 
> As indicated in the final warning message there the real tasks run
> since no sstate artifact is available. These tasks succeed:
> 
> NOTE: recipe qt3d-5.13.2+gitAUTOINC+93361f1a59-r0: task
> do_package_write_ipk: Succeeded
> 
> The result is a successful build of the desired images. However, the
> build is marked as a failure due to those sstate errors:
> 
> Summary: There were 11 ERROR messages shown, returning a non-zero
> exit code.
> 
> Is this the expected behaviour? The final images are built correctly.
> I can't see any simple way to mask those setscene errors but I might
> be missing something.
> 
> The full log can be seen at
> https://gitlab.com/SanCloudLtd/sancloud-arago/-/jobs/443901140/raw.
> I'm on the zeus branch here, I'll try to re-test on master later if I
> can.

We've discussed this before and it can be argued either way.

Personally, I worry about why artefacts "disappear" and this is why its
an error, files should not be disappearing part way through a build.

From a bitbake perspective, a task really did fail and task failures
are errors. The fact it was able to recover is a bonus.

Perhaps it should be a warning now we have levels of warnings that are
meaningful. Previously we threw so many, this would have been one more
lost amongst many. I know many people don't like the behaviour.

Cheers,

Richard



