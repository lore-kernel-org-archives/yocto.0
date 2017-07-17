Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF900E00C30; Mon, 17 Jul 2017 07:28:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2ACEE00BB6
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:28:27 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id 188so17985083itx.0
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BK6sQZ74KiBk3G/BDIVokIa0YzVfsT7DrtJwj9pCG/E=;
	b=RWJYBEwgYRS7HzOB8qXb2PczshWpDFQb+E5rQCAHuMgwnktRYx+aD3AYdE84UBWrYZ
	4BTlhUDogNg3vYc0ICcQ2PO42jox8DfW8vv9JV4Ckz7FEZxBymmtlUGs/wmmDggMy1Rs
	ReKWtNfrzASOlk551wMLhVfVsrB1XucN/ZAn0EPUyBkzQjed43IkRBWz3MbROQJv9H1H
	o0haqF3NDcrzOhLMLdmnf6ow+t0iOojiZ9cgDtc/oL7VtdCJAcInnMFdQxgouB7eFjpN
	WAww5QVkt+CGdFfR+880+Yy2erA4w6kfSc9xxLkcI6J9+SB1CPPwmgRU9CCzZMenC7ip
	Z4aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BK6sQZ74KiBk3G/BDIVokIa0YzVfsT7DrtJwj9pCG/E=;
	b=glj6NEjyUtkDyn5L8HqJKIIbXQ95nucf9fjGNLbT3JK9cHmKIPI0YDFIBXJbnZNjNL
	U4obEKopMVih/mQ3blDZ6CcuXLJ/kJXr1YyD9CV3eK9ox+F3H51um2xfVKAsFrnV+9mi
	eYwxsLD3wBXiE7sAYzkVzsQ1bWe/h4EHBcCsTqz5XhhEtyR2xyGrsHEnC/FHjfHAADnd
	P1fGK+7D+0AB6fC7Babt1O+n4AC5w0q3u6bSrqb72OnS8iMYoXNWjIpK2PdWhVpwTZ/I
	D7CpB1bnt9+f48GVRCTb+gZvloA/KblHNNFKM9yR21+X9sTtT1tFlXTHwq+mGhA6TTSa
	tuXQ==
X-Gm-Message-State: AIVw113t+FvcP2oSe+D1IiUXNdY6gzEYM5ve/Rc+VFV3ePJYkhBjzgEJ
	DWKbW2ORj47qqJbQxz8MD6yjuihEDrN3ZDU=
X-Received: by 10.36.95.131 with SMTP id r125mr3519222itb.36.1500301706961;
	Mon, 17 Jul 2017 07:28:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.180.77 with HTTP; Mon, 17 Jul 2017 07:28:06 -0700 (PDT)
In-Reply-To: <c2eee59d-1711-764c-7522-8a2e23503e3f@linux.intel.com>
References: <20170717141816.11895-1-ricardo.ribalda@gmail.com>
	<c2eee59d-1711-764c-7522-8a2e23503e3f@linux.intel.com>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Mon, 17 Jul 2017 16:28:06 +0200
Message-ID: <CAPybu_3SodiWSDLsu4zD+WHTmDdsAL-y54ZgBLNRZ1JzH3fLaA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH v2] qt4: Fix build with moc4 and boost
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
X-List-Received-Date: Mon, 17 Jul 2017 14:28:29 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Alex

Unortunately I do not know who is the original author. The oldest
thing that I can track is:

http://pkgs.fedoraproject.org/cgit/rpms/qt.git/commit/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch?id=7d0674cfd8a0bd3722f9169adac15c796483cf88

But I am not sure if it is appropriate to add a SOB If we are not sure
of the authorship.

On Mon, Jul 17, 2017 at 4:22 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 07/17/2017 05:18 PM, Ricardo Ribalda Delgado wrote:
>>
>> index 000000000000..e5d3c266bade
>> --- /dev/null
>> +++
>> b/recipes-qt4/qt4/qt4-4.8.7/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
>> @@ -0,0 +1,21 @@
>> +Error described on: https://bugzilla.redhat.com/show_bug.cgi?id=1396755
>> +Patch obtained from:
>> http://pkgs.fedoraproject.org/cgit/rpms/qt.git/tree/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
>> +
>> +Upstream-Status: Inappropriate
>
>
> The patch itself also needs a Signed-off-by.
>
> Alex
>



-- 
Ricardo Ribalda

