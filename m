Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DA29E00C8E; Wed,  5 Oct 2016 13:50:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A03AE00C5D
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 13:49:58 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id f193so427526wmg.2
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 13:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=NyymjUpvthcGIFzss4jqQpnLBvusCtHYKR5R11gXaVE=;
	b=xnUT8V7CEp/vPf4Bnn4oSSf2NEFFiuuSmgwFr3MZPN0DvT836bZkOrs9hx0xiPli9L
	UXkj9gLwvtk0G2avAV47jvcUJWV5awGkD5DsIypm4y62SHaAB8mYjPKNcK7IcReyaWXq
	49PburdVM8fGeSEs025xIHTdkoxL1eZCF0omgwNK9AZYdkR8cnEGO7VVLeDytkUoAjWG
	N/oQ0OghdwUoxwsD224B5oR/QVmQX1b3+YNupQ/Tuy67Xc2mww8Ek9E+me1n7TBXKuBi
	HLreCNVGq0zKSjFVPOJAn7S6gFHkEUtPx9x1zxXMqM2MQ/tqX7yaz4FF5eTXb/oORIYC
	rsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=NyymjUpvthcGIFzss4jqQpnLBvusCtHYKR5R11gXaVE=;
	b=c9v6zk91GKyJMaHEXv//yb1wQ/NbXSb77Nu+OOroBSRgRxJDQr2OfK87yFQPOjEHGw
	tkyyyn9Yov5e0DvElG+1GXCZCoUjc4f6NtMgjwZrJOWHsxtICeIUXdCW3DWVnUaqWUha
	PdFDdEg2hh6ibkHJ3gkEuyh30n/gHLdwZV8G6upkj/f4aCSONZAd3fOOs9TIkc0/BRLa
	yZ0663GyFowIr7OSNv3tuDmJaLBYIuHO0rSnoqTMkM+JROBbl8KTj0muTsrhlIICX2fu
	2+4cNM6Jh4Ol/BUhQo+/kWzKVYOEa14TtWk54FtEHsS/ppS9SJHWJP392ug8EkbifOde
	ShTQ==
X-Gm-Message-State: AA6/9RlxbdixbZ30fFlN/OLpColfjkQygLZgp/oeSAh+m7ejTymMptitr/wIwHS1Ldjk0weVcFLKITmmM7lMbg==
X-Received: by 10.28.28.193 with SMTP id c184mr7171766wmc.53.1475700597876;
	Wed, 05 Oct 2016 13:49:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.52.78 with HTTP; Wed, 5 Oct 2016 13:49:57 -0700 (PDT)
In-Reply-To: <57F566E7.8000902@linux.intel.com>
References: <1475267391-19357-1-git-send-email-monserratx.sedeno.bustos@intel.com>
	<57F5156A.6050900@linux.intel.com> <57F55BED.1060204@linux.intel.com>
	<CA+n--H_-o_igyoDq0WtNgfvXENToJMR2zKREb22yjXTjEnj+Yw@mail.gmail.com>
	<57F566E7.8000902@linux.intel.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Wed, 5 Oct 2016 13:49:57 -0700
Message-ID: <CA+n--H-CCTi4Aryjkfvoq7cf+rokQsdnxc7rwYdOd8sjbUpsfA@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org,
	Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: Re: [[yocto-autobuilder][PATCHv2]] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Wed, 05 Oct 2016 20:50:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 5, 2016 at 1:47 PM, An=C3=ADbal Lim=C3=B3n
<anibal.limon@linux.intel.com> wrote:
>
>
> On 10/05/2016 03:41 PM, Bill Randle wrote:
>> I also wonder if this actually belongs in
>> buildset-config.autobuilder-qa (which doesn't have any other configs),
>> or in buildset-config.controller where all the others reside.
>
> I don't know what was the original target for the autobuilder-qa
> buildset but the new distro-qa buildset won't run in  regular basis and
> also is part of the QA process. Make sense to me to put inside that folde=
r.
>

That's ok with me. Just asking the question.

>         alimon
>
>>
>>     -Bill
>>
>> On Wed, Oct 5, 2016 at 1:00 PM, An=C3=ADbal Lim=C3=B3n
>> <anibal.limon@linux.intel.com> wrote:
>>> Oh, I didn't notice that this patch isn't applied to ab master branch.
>>>
>>> Monse, could you send a new patch over master?
>>>
>>> Cheers,
>>>         alimon
>>>
>>> On 10/05/2016 09:59 AM, An=C3=ADbal Lim=C3=B3n wrote:
>>>>
>>>>
>>>> On 09/30/2016 03:29 PM, Monserrat Sedeno wrote:
>>>>> As part of the process to set new OS distribution as supported on Yoc=
toc Project
>>>>> a new patch was created with the list of build sets that should be ex=
ecuted.
>>>>>
>>>>> Detailed information:
>>>>> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_=
Sets
>>>>>
>>>>> Fixes [YOCTO #9905]
>>>>>
>>>>> Note:In order to add a new distro as supported all the build sets sho=
uld be PASS
>>>>>
>>>>> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
>>>> Acked-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>>>>> ---
>>>>>  buildset-config.autobuilder-qa/nightly-qa-distro.conf | 4 ++--
>>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/=
buildset-config.autobuilder-qa/nightly-qa-distro.conf
>>>>> index 0fcdbef..6c02a91 100644
>>>>> --- a/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>>>>> +++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>>>>> @@ -25,7 +25,6 @@ steps: [{'SetDest':{}},
>>>>>                              'nightly-deb': {},
>>>>>                              'nightly-ipk': {},
>>>>>                              'nightly-world': {},
>>>>> -                            'buildtools': {},
>>>>>                              'nightly-arm': {},
>>>>>                              'nightly-mips': {},
>>>>>                              'nightly-wic':{},
>>>>> @@ -37,8 +36,9 @@ steps: [{'SetDest':{}},
>>>>>                              'nightly-qa-systemd': {},
>>>>>                              'nightly-qa-extras': {},
>>>>>                              'nightly-qa-targetbuilds': {},
>>>>> -                            'nightly-qa-skeleton': {}},
>>>>> +                            'nightly-qa-skeleton': {},
>>>>>                              'nightly-qa-logrotate': {},
>>>>>                              'nightly-qa-pam': {},
>>>>> +                            'buildtools': {}},
>>>>>                             'schedulerNames_nowait': {}}},]
>>>>>
>>>>>
>>>>
>>>>
>>>>
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>

