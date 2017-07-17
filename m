Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C261E00C30; Mon, 17 Jul 2017 07:13:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 086C6E00BB6
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:13:20 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id v193so18041964itc.2
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QEXDxDWaK4YIcugAIsuhWaxfb676GG5u03v+iW+V5LY=;
	b=ZfOA1TZfyOWIlu5IGReKUMrsH1Ybk69tdhqjHJRJTxuCCsQ/IDOfUNxutMJBY5zpI9
	dM0vyvkcMHfP3T9Zp2Qpd2FR51X5P0z6xDWkCSFtSvIK9DQ4FhcgeOTl7an4/bHY5ASk
	JWTjgTmSntjmzP6T/ORcfGPhXOQHU+uWCfkgCwOUIWrhTux+qH6DB0fKonq+OrV8ZnLj
	miUN0qCaHOj0JpcfZsK49v9HS+UzXG9O1ezdF/sCEYiTfBxYk2IeGk/tDdOzxPM4edWK
	9iCJsSHGmpu6JXNPlK1eH4AQFHPWst/oDIjHZf2CqD3dUflPMAOYq7gHkQPv4zQVrpvM
	tpdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QEXDxDWaK4YIcugAIsuhWaxfb676GG5u03v+iW+V5LY=;
	b=DFZERC1Z9ddwgAFYVj/exksixc3XB2pNiuY90fEZSfoF78ln8Em1Vrq558iPz+ZhBX
	z2J8Znb1VZvFHsw7R989KgJFijYZPpBL5tx1THxXIY0aynnwOIRDi2WSKrCCXK9vuL52
	x1Zq+6SN0wGeAddj6MFhSFHIpRCXqQAo834xF02kBjqguoGxtgiY8ILobaOCJ9NhKjxH
	+gDGDlpzaJHq4fyX+q41jrjIKTuNIYo4JWBRYYDgCtPvm88iCqkxH9wNQTTzRTl10JZ6
	yYsNP3NLQYI9bZe/WnDZdH+jhgld7m7iQKN1QBRaAs55IjVVw/de6LT3mR8OF7mvWsGO
	CEkg==
X-Gm-Message-State: AIVw110FIV4WtKMFBPQZGeNGEb/JtQ5YqwII9/u7/Kk9EqQti2MXyVfi
	rDGM++n6AwgC4/7W5H6HwsvQMDLofg==
X-Received: by 10.36.3.213 with SMTP id e204mr5702968ite.36.1500300800116;
	Mon, 17 Jul 2017 07:13:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.180.77 with HTTP; Mon, 17 Jul 2017 07:12:59 -0700 (PDT)
In-Reply-To: <CAPybu_3WQkv9_pJ-td_heuWyp3uF07kLmFGp894DnPCjX5jGPw@mail.gmail.com>
References: <20170707103058.976-1-ricardo.ribalda@gmail.com>
	<c49169cb-86c2-918d-09aa-e4e8de22a275@linux.intel.com>
	<CAPybu_3WQkv9_pJ-td_heuWyp3uF07kLmFGp894DnPCjX5jGPw@mail.gmail.com>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Mon, 17 Jul 2017 16:12:59 +0200
Message-ID: <CAPybu_2Y_JhencZe6rU7A=zrGb01HM6juLgSqJkhmVX7CNt8Ow@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt4][PATCH] qt4: Fix build with moc4 and boost
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
X-List-Received-Date: Mon, 17 Jul 2017 14:13:21 -0000
Content-Type: text/plain; charset="UTF-8"

Actually I got the patch from

https://bugzilla.redhat.com/show_bug.cgi?id=1396755
http://pkgs.fedoraproject.org/cgit/rpms/qt.git/tree/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch

On Mon, Jul 17, 2017 at 4:11 PM, Ricardo Ribalda Delgado
<ricardo.ribalda@gmail.com> wrote:
> https://codereview.qt-project.org/#/c/40593/3/src/tools/moc/main.cpp
>
> On Mon, Jul 17, 2017 at 4:04 PM, Alexander Kanavin
> <alexander.kanavin@linux.intel.com> wrote:
>> On 07/07/2017 01:30 PM, Ricardo Ribalda Delgado wrote:
>>>
>>> +Error described on: https://bugzilla.redhat.com/show_bug.cgi?id=1396755
>>> +
>>> +Upstream-Status: Backport
>>
>>
>> Backport from where? Please provide a link.
>>
>>
>> Alex
>
>
>
> --
> Ricardo Ribalda



-- 
Ricardo Ribalda

