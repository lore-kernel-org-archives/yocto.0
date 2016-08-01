Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17AB3E010B4; Mon,  1 Aug 2016 06:56:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D193E00E6C
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 06:56:49 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id v123so13024033qkh.3
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 06:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bOi/TYT1q9JmVjiOgBG0sF3l1yO+0P16n9PJgRoncu4=;
	b=gMHd2VK5wL87k+c7lWk5oUMQ++d8Q+SpQQygPdWhzPfzXLL1is6PU4xrQVjTzETMZF
	QAcVNgHJKwiSxmE3SCBBxfoZ+gP1AUqKR7GCvno9SihRWLqjtgj+PVnuSEjfQDqOfcbY
	QDPRw1QLwUWj13oHnRNIr3tJWk7bTiSafsmFhO+PPdvlS++K2qODemU1Cu56cikN59sB
	JHQQejsqS7hz2PQonOwnTvTbQOfCeAdmMHxRybzrTwL0wqO5swM5P7piZc6SuE7CK6A7
	Of83XCqdwcSk+UwEEmz2SBw+JFaqcJ++bN8anpej5E22akBGSPYs41Bl/oE//DH8Gfhk
	48iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bOi/TYT1q9JmVjiOgBG0sF3l1yO+0P16n9PJgRoncu4=;
	b=Ib1c/uLisfDXm2gkySb1uC1DpeHm5Tr8S4aHs4V2rXh6Kr3s71sccNnM+Ur5BZ1Eo2
	ledlIZzox2Hm/fRRTKOOc8SYAQ/pGOFC2u82uuRtxmhq6Ed8R4My7OpOjbjVPb6SoJdn
	lqJXitWzYKkMcvF6uscR564AAGX3WpMh8P/ZH24KnV+xzVbF6JYG7a9qldLDZz7H1Uwb
	QPp0yLWZsszjHphJw36MWt7F2jOtOHHAuzoY23N8dLT0vMmCJ3ECL+wq9xrSG1ZV1rIB
	IdEmRhhVD31aHr17ha21h5l6gLTZI1fVik4EVT3pJFdBWr15IEknPyrorKscL/Ju7ptC
	raMQ==
X-Gm-Message-State: AEkoousSt8nNHaVG5Qhu6s/9ScmNu4L+DfbTKiVsf93TFxfZi7IbynyJ7WatNlGCLSMv7Zw0Xyl8U3o885FXaQ==
X-Received: by 10.55.40.222 with SMTP id o91mr30611070qko.151.1470059809355;
	Mon, 01 Aug 2016 06:56:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.215.13 with HTTP; Mon, 1 Aug 2016 06:56:18 -0700 (PDT)
In-Reply-To: <CAFrQVPPN3iVVakjYLGOBnP=rc5oeO40SfEV5s6tyE4jiN9Z_eA@mail.gmail.com>
References: <1470052915-2839-1-git-send-email-bkylerussell@gmail.com>
	<CAJTo0LZKE9cf8i5x2Cz7AjT3ve_BVFTcMbLhHa8Ys+bkaz+BVA@mail.gmail.com>
	<CAFrQVPPN3iVVakjYLGOBnP=rc5oeO40SfEV5s6tyE4jiN9Z_eA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 1 Aug 2016 07:56:18 -0600
Message-ID: <CAMKF1sqbt7sqTjys_B5+vfXhNoXzzQLSL_tO3j_Xb7Dq-FZh3g@mail.gmail.com>
To: Kyle Russell <bkylerussell@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta][PATCH v2] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Mon, 01 Aug 2016 13:56:53 -0000
Content-Type: text/plain; charset=UTF-8

and when patch is ready send it to openembedded-core ml

On Mon, Aug 1, 2016 at 6:49 AM, Kyle Russell <bkylerussell@gmail.com> wrote:
> Well, that makes sense.  I'm just tripping all over this one.
>
> On Mon, Aug 1, 2016 at 8:29 AM, Burton, Ross <ross.burton@intel.com> wrote:
>>
>>
>> On 1 August 2016 at 13:01, Kyle Russell <bkylerussell@gmail.com> wrote:
>>>
>>>  scripts/contrib/python/generate-manifest-3.4.py | 10 +++++-----
>>
>>
>> Sorry, but you need to edit the script and then run the script, so the
>> patch contains both the script and inc file changes.
>>
>> Ross
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

