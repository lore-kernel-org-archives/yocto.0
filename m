Return-Path: <brian@walsh.ws>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7A13E00C43; Tue, 26 Feb 2019 11:35:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
	[209.85.222.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30042E00C1B
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 11:35:28 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id j8so12947111uae.13
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 11:35:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walsh.ws; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=lDVWnz8P/wjOJ/tZf29yNAs/Tu5vKoNeAiT6Id/avZo=;
	b=KKXK0H/Z/qvrJIGf5ZCr6lSlU+Ctmjzx3Ahdm1GAC3djqPlOt6fQWizRbw3WDTghp7
	jayIQtdhLbM2DQjck0uz9y9p6Y62XA0QWhUCgHliINDlLLFlsZE+RZ5xwuKN81d7qF92
	42JkoVsiVQmaxAfpj6vPu0cWVqBAzW0qfBdk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=lDVWnz8P/wjOJ/tZf29yNAs/Tu5vKoNeAiT6Id/avZo=;
	b=kf4u/KpufwBFB1AmB+F5JquV6mdeoTU305CYmLkBnsDWBUL9nIcp6F5N3FIDjSG9ha
	K7+xFLOv87KQada4ecqNjMdsejtNsoRBUOCfZ0RYTYuV48xD8/u7+HsiKNox1KqWTYY3
	mkGwbFTsDJZNVEoni2Zp9b8ZE8kDCdwnNGklJtKAln6XE7iChcz9O+vpm8Qr+EHzGUHP
	brzngMmrGxZYYVGMT0iE10N7x0l+MNnbiSDERy+JvYUD1xcehHyRViyKBWJwSFUzLS/8
	luRRDXmgbymPJd265Ewl0AE+DcFuBym7uGEnJraZRgQDJ/Ls1UkacZYM5+36vwFIvvaI
	0xSA==
X-Gm-Message-State: AHQUAuYFCIu+/1yVxayEuUu0jiWQ/lvhz++eCA5ndW+vIPysRIVysp4c
	L5KP8H/aFbLm/sOm4Bvvuinb4AobUE2NxLQZNMuir+5Wlxc=
X-Google-Smtp-Source: AHgI3IaaEIuH9xPpnHv1LP5O5KKl8rqJXTNoB4aaylLEHV4f+iEy7ABZAyDCB45zS9y9HaiKa+LqX4G7SdEGS0adC+M=
X-Received: by 2002:ab0:7590:: with SMTP id q16mr8737949uap.105.1551209727071; 
	Tue, 26 Feb 2019 11:35:27 -0800 (PST)
MIME-Version: 1.0
References: <CAHSUxjS=7_yLBOVMJLbzrtKNbGL_fKhTMh7fcOXc=wsqyZe+hQ@mail.gmail.com>
In-Reply-To: <CAHSUxjS=7_yLBOVMJLbzrtKNbGL_fKhTMh7fcOXc=wsqyZe+hQ@mail.gmail.com>
From: Brian Walsh <brian@walsh.ws>
Date: Tue, 26 Feb 2019 14:35:15 -0500
Message-ID: <CAG0OLMYHYmDRMApuEW72Q_fm_yWRnBP-vUCPTtBsnkL2D9z3gg@mail.gmail.com>
To: Timothy Froehlich <tfroehlich@archsys.io>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Storing Sstate in S3 success stories?
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
X-List-Received-Date: Tue, 26 Feb 2019 19:35:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 25, 2019 at 8:46 PM Timothy Froehlich <tfroehlich@archsys.io> w=
rote:
>
> I've been spending a bit too long this past week trying to build up a rep=
roducable build infrastructure in AWS and I've got very little experience w=
ith cloud infrastucture and I'm wondering if I'm going in the wrong directi=
on. I'm attempting to host my sstate_cache as a mirror in a private S3 buck=
et, and I believe I have everything configured properly, including exposing=
 the bucket to http requests, since I can wget files that I've previously s=
ynced up to the bucket. However if I add in the SSTATE_MIRRORS to my build,=
 bitbake slows to a crawl (it's a powerful VM) and barely seems to get anyt=
hing. The EC2 instance is in the same region as the S3 bucket, roles have b=
een configured properly to allow access, etc.
>
> I'm not looking for help debugging this, I just want to know whether I'm =
right that hosting my sstate in an S3 bucket should work. I've only been ab=
le to find one mention of it being done with no reproduction hints.
>

A lot of the files end up with plus signs in the name. This causes
problems with retrieving files through http access with S3. S3
translates all plus signs to spaces, even those in the file path. So
if my-file_v1.0+g1241876 actually exists as named in S3 an http
request for that file will trigger the server to look for
"my-file_v1.0 g1241876"

I ran into this problem trying to host an opkg repository in S3 for upgradi=
ng.

It may mostly work for you but there will be many files that it will
never be able to find in your S3 hosted sstate.

Maybe this has been fixed by AWS. I noticed the problem a year or two ago.

https://stackoverflow.com/questions/36734171/how-to-decide-if-the-filename-=
has-a-plus-sign-in-it#36758133
https://news.ycombinator.com/item?id=3D15398804

