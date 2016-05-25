Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AACC6E00D31; Wed, 25 May 2016 09:41:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C52FE00D1C
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 09:40:56 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id fg1so5832324pad.3
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 09:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=9dCpnZoruEk9JTm6/Rh5Q+IpaxjNsfXpo3oI9IrTVw8=;
	b=rkh7kOYMHubQrVS8A6sdvcl22ubzCepAD3LvsM3Ur8XncMtKP09r8pI8c0b/IgWAXV
	U8ix4j6gmoDZ6/eOuhCg/O2U8nwvMCxwY3Iqy05v6QQlR0uzZlgBg0oMPyf7ZjTe6FI8
	Z9U+vq7xMaGZdq99T9+SCy7iphe6LAXXlfGHNnca8sgL01s+TFESDvgiAnuOLPQAhEdt
	Iriy0m+9HaHjGvvw5zTO7TUXZtpFOvcnNWEHXYwaxUXunWkxA1On3Fds2jYRshuA49Y2
	LE4+imPQAibs97FWCyb+ERr6X3HCg4jhX4z2oPC9/9ugg8Oc07Q7h9A3d07vp8EGYxHs
	qyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=9dCpnZoruEk9JTm6/Rh5Q+IpaxjNsfXpo3oI9IrTVw8=;
	b=X3n9Xf31ztE8nS60MjtnrpjHMzekc6uFsHYeasi2wNpqw2TYVkNWo9COlfNcTxvFDM
	f+Q751T9ZUrNdzxGDb9Ful6cV1uBnKefplIW92C2UG2cjXhh+c+PMzVql4D0EABsqli/
	XAKsYyJLXn2O7cZFpuYsQG7VOyXw15PDX32+J/hOTNQbf6JCGlTvF5g+mqV+cjzhO2OZ
	3AvH2EuaFG/ypN0jjbRKTmJZpJAdl1Na6ao9Kb6QGydD2Iz9UnBRXcBd6xudQZeCPCBb
	A9wjSDkSuJwTScH10Dk2ePiEm99kyB/d+GvpA+UojMBt2dAJJ+gCyjrgBps7PjI/eMsF
	DIZA==
X-Gm-Message-State: ALyK8tLRwEFAchZ6lJbYYZ4IlXp+JWb+zDlTtsAZFUvi0sq91mz0qYEqNbDieL89r5SjiA==
X-Received: by 10.66.78.73 with SMTP id z9mr7187268paw.4.1464194456494;
	Wed, 25 May 2016 09:40:56 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	tk4sm14023146pab.3.2016.05.25.09.40.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 May 2016 09:40:55 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 25 May 2016 09:40:54 -0700
Message-ID: <3784292.xdaYVqVUc2@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.4.8-200.fc22.x86_64+debug; KDE/4.14.17;
	x86_64; ; )
In-Reply-To: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
References: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
MIME-Version: 1.0
Subject: Re: any pointers to a yocto-based image to use as a live install utility?
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
X-List-Received-Date: Wed, 25 May 2016 16:41:00 -0000
Content-Type: multipart/alternative; boundary="nextPart3306023.41IyM0hKFC"
Content-Transfer-Encoding: 7Bit

--nextPart3306023.41IyM0hKFC
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Wednesday, May 25, 2016 06:18:34 AM Robert P. J. Day wrote:
> 
>   specifically in the context of powerpc systems, are there any
> suggestions for an image that could be used to boot an older powerpc
> system, running completely out of ram, and using that as an install
> utility which would then be responsible for detecting/formatting a
> hard drive, creating/formatting filesystems, downloading/installing
> the OS, post-install configuration and so on?
> 
I am not entirely sure if I understand your requirements correctly but this https://github.com/mendersoftware/mender[1] could eventually be a starting point. The good news is that it already comes with YP/OE recipes and integration. However, it's currently only for ARM-based systems with u-boot.

Another approach, though still in its infancy and a simple PoC, is the GENIVI Software Management (SWM). At the core, there are SqashFS images that may contain partition images, software packages, configuration files, etc. together with a manifest (JSON) that instructs the SWM what to do. (https://github.com/GENIVI/genivi_swm)[2]

Cheers,
:rjs


--------
[1] https://github.com/mendersoftware/mender
[2] https://github.com/GENIVI/genivi_swm

--nextPart3306023.41IyM0hKFC
Content-Transfer-Encoding: 7Bit
Content-Type: text/html; charset="us-ascii"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Sans Serif'; font-size:10pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hi Robert,</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">On Wednesday, May 25, 2016 06:18:34 AM Robert P. J. Day wrote:</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt;   specifically in the context of powerpc systems, are there any</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; suggestions for an image that could be used to boot an older powerpc</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; system, running completely out of ram, and using that as an install</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; utility which would then be responsible for detecting/formatting a</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; hard drive, creating/formatting filesystems, downloading/installing</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; the OS, post-install configuration and so on?</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">I am not entirely sure if I understand your requirements correctly but this <a href="https://github.com/mendersoftware/mender"><span style=" text-decoration: underline; color:#2980b9;">https://github.com/mendersoftware/mender</span></a> could eventually be a starting point. The good news is that it already comes with YP/OE recipes and integration. However, it's currently only for ARM-based systems with u-boot.</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Another approach, though still in its infancy and a simple PoC, is the GENIVI Software Management (SWM). At the core, there are SqashFS images that may contain partition images, software packages, configuration files, etc. together with a manifest (JSON) that instructs the SWM what to do. (<a href="https://github.com/GENIVI/genivi_swm"><span style=" text-decoration: underline; color:#2980b9;">https://github.com/GENIVI/genivi_swm)</span></a></p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Cheers,</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">:rjs</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p></body></html>

--nextPart3306023.41IyM0hKFC--
