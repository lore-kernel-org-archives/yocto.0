Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E08BE00A10; Tue, 15 Nov 2016 00:23:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,NORMAL_HTTP_TO_IP,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 856C2E00953
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 00:23:10 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id u144so20664549wmu.1
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 00:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=5xUGD5bcC55rcsavR9eTaUew6NXpSs8Qaw/+1dNfA+Y=;
	b=Qtq+zKdUZdTEXUEYo+r8OSsVlYpQhe7VWILPxNmtyqIhMSO3inhGCiURiqkDxX/vWo
	Kik/mG5DIzj/0UgvkfcrUQ5xywT+YHq4SE5wbJ8P87DJjuq7XpHzJ2XzoFoeVilOm5VO
	J+pFY6aWGEvMhp8OtDU7/6VhZnA/YVqYaWnITjCUXwURyAJYm0A62iNz2wzdySrl1IJI
	/Dx4uPkgya6xK6170/xL6hmI+H45rFcNCr5cqtOihjD8J5bLVKev8ynOaO42LS00aXgV
	/Bcaxp853DL71Jc7phQlUEkeYoquzgupqGrnQ5aMkU8Gi7w9Y4ebqexhi7woS1Pq4DXa
	400w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=5xUGD5bcC55rcsavR9eTaUew6NXpSs8Qaw/+1dNfA+Y=;
	b=E5lOyAK/zTLujKYJOwzD+38cSxkTJ/UBSxs+4N6jc3wyUOG3WC/FUI3467qIA+UGcG
	rj4o3bjeQKmPIhecrmtwXt8VV2yF5I4cdWHwLyNlT8J3VM1hUWejf/X0h+n5jpR3zOz9
	Xqk1fnKYAgQ3vVVnjhKIKDU7qXaftuYhcbPXsvJuMGibmPQAjMXGSjx8ejTc3yiwSh1w
	JP6tuK7XXQVQlKfTxh+DvGbE/v2cQKVNA0wC5+DvZf0YoeqbVixgjpN6jOnuqnuTltSc
	jo1pCL/eXKzDWhiSMRLq70XrVJx08HkTYy0i1wwzImfv8Gj0dOwLcAG2t9uxNV7q/uI+
	5Wbg==
X-Gm-Message-State: ABUngvdGPd9yD3mUl9NSglHdBDrkjdsYpKv8brZ0gskJdCBivcUuGluT41fNt5tNHwbSlQ==
X-Received: by 10.28.29.86 with SMTP id d83mr2158521wmd.75.1479198183946;
	Tue, 15 Nov 2016 00:23:03 -0800 (PST)
Received: from [192.168.2.176] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	l67sm2786279wmf.20.2016.11.15.00.23.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Nov 2016 00:23:03 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
References: <20161103222609.4526-1-raj.khem@gmail.com>
	<c0c7583d-e393-3256-1f8a-8452f6e1f82a@elfin.de>
	<CAMKF1sr+jNrT76YbRsWwJV1ce=TKpfqPRQP1_rnvGjHT6ToedQ@mail.gmail.com>
From: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <07d642e2-2fd8-4af1-e5a0-17961c48dbad@elfin.de>
Date: Tue, 15 Nov 2016 09:23:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sr+jNrT76YbRsWwJV1ce=TKpfqPRQP1_rnvGjHT6ToedQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-firmware_git.bbappend: Delete
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
X-List-Received-Date: Tue, 15 Nov 2016 08:23:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi.

Michael was right, the new subpackage was renamed and it is now called 
linux-firmware-bcm43430.

I have sent the patch with fixed typo.


Piotr


On 14.11.2016 18:45, Khem Raj wrote:
> are you using linux-firmware-bcm43430
>
> On Mon, Nov 14, 2016 at 4:27 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
>> Dear Raj,
>>
>> I have been trying to test this, but I get "ERROR: Nothing RPROVIDES
>> 'linux-firmware-brcm43430'".
>>
>> I'm one hundred percent sure that I have the commit you have mentioned
>> ("linux-firmware: package Broadcom BCM43430 firmware").
>>
>> I use poky- latest on morty branch and meta-openembedded - also latest on
>> morty branch.
>>
>> Since I don't use bluetooth I have removed the line
>>
>> MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
>>
>> from the file `meta-raspberrypi/conf/machine/raspberrypi3.conf`
>>
>>
>> Any idea why it is not building for me?
>>
>> BR,
>>
>> Piotr
>>
>>
>> On 03.11.2016 23:26, Khem Raj wrote:
>>> OE-core already bumped the base rev on linux-firmware package
>>> to include the upstreamed version of brcmfmac43430 firmware in
>>> september via OE-Core commit a0bc732976670810505286ba43feee70e2c812ce
>>>
>>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>>> ---
>>>    .../linux-firmware/LICENSE.broadcom_brcm80211      | 205
>>> ---------------------
>>>    .../linux-firmware/brcmfmac43430-sdio.bin          | Bin 368957 -> 0
>>> bytes
>>>    .../linux-firmware/brcmfmac43430-sdio.txt          |  66 -------
>>>    .../linux-firmware/linux-firmware_git.bbappend     |  34 ----
>>>    4 files changed, 305 deletions(-)
>>>    delete mode 100644
>>> recipes-kernel/linux-firmware/linux-firmware/LICENSE.broadcom_brcm80211
>>>    delete mode 100644
>>> recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.bin
>>>    delete mode 100644
>>> recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.txt
>>>    delete mode 100644
>>> recipes-kernel/linux-firmware/linux-firmware_git.bbappend
>>>
>>> diff --git
>>> a/recipes-kernel/linux-firmware/linux-firmware/LICENSE.broadcom_brcm80211
>>> b/recipes-kernel/linux-firmware/linux-firmware/LICENSE.broadcom_brcm80211
>>> deleted file mode 100644
>>> index e2cf868..0000000
>>> ---
>>> a/recipes-kernel/linux-firmware/linux-firmware/LICENSE.broadcom_brcm80211
>>> +++ /dev/null
>>> @@ -1,205 +0,0 @@
>>> -SOFTWARE LICENSE AGREEMENT
>>> -
>>> -Unless you and Broadcom Corporation (“Broadcom”) execute a separate
>>> written
>>> -software license agreement governing use of the accompanying software,
>>> this
>>> -software is licensed to you under the terms of this Software License
>>> Agreement
>>> -(“Agreement”).
>>> -
>>> -ANY USE, REPRODUCTION OR DISTRIBUTION OF THE SOFTWARE CONSTITUTES YOUR
>>> -ACCEPTANCE OF THIS AGREEMENT.
>>> -
>>> -1.     DEFINITIONS.
>>> -
>>> -1.1.   “Broadcom Product” means any of the proprietary integrated circuit
>>> -product(s) sold by Broadcom with which the Software was designed to be
>>> used, or
>>> -their successors.
>>> -
>>> -1.2.   “Licensee” means you or if you are accepting on behalf of an
>>> entity
>>> -then the entity and its affiliates exercising rights under, and complying
>>> with
>>> -all of the terms of this Agreement.
>>> -
>>> -1.3.   “Software” shall mean that software made available by Broadcom to
>>> -Licensee in binary code form with this Agreement.
>>> -
>>> -2.     LICENSE GRANT; OWNERSHIP
>>> -
>>> -2.1.   License Grants.  Subject to the terms and conditions of this
>>> Agreement,
>>> -Broadcom hereby grants to Licensee a non-exclusive, non-transferable,
>>> -royalty-free license (i) to use and integrate the Software in conjunction
>>> with
>>> -any other software; and (ii) to reproduce and distribute the Software
>>> complete,
>>> -unmodified and as provided by Broadcom, and only for use with a Broadcom
>>> -Product.
>>> -
>>> -2.2.   Restriction on Modification.  Licensee may not make any
>>> modifications
>>> -to the Software.
>>> -
>>> -2.3.   Restriction on Distribution.  Licensee shall only distribute the
>>> -Software under the terms of this Agreement and a copy of this Agreement
>>> -accompanies such distribution.
>>> -
>>> -2.4.   Proprietary Notices.  Licensee shall not remove, efface or obscure
>>> any
>>> -copyright or trademark notices from the Software.  Licensee shall include
>>> -reproductions of the Broadcom copyright notice with each copy of the
>>> Software,
>>> -except where such Software is embedded in a manner not readily accessible
>>> to
>>> -the end user.  Licensee acknowledges that any symbols, trademarks,
>>> tradenames,
>>> -and service marks adopted by Broadcom to identify the Software belong to
>>> -Broadcom and that Licensee shall have no rights therein.
>>> -
>>> -2.5.   Ownership.  Broadcom shall retain all right, title and interest,
>>> -including all intellectual property rights, in and to the Software.
>>> Licensee
>>> -hereby covenants that it will not assert any claim that the Software
>>> created by
>>> -or for Broadcom infringe any intellectual property right owned or
>>> controlled by
>>> -Licensee; provided however, the foregoing shall not apply in case the
>>> Agreement
>>> -is terminated.
>>> -
>>> -2.6.   No Other Rights Granted; Restrictions.  Apart from the license
>>> rights
>>> -expressly set forth in this Agreement, Broadcom does not grant and
>>> Licensee
>>> -does not receive any ownership right, title or interest nor any security
>>> -interest or other interest in any intellectual property rights relating
>>> to the
>>> -Software, nor in any copy of any part of the foregoing.  No license is
>>> granted
>>> -to Licensee in any human readable code of the Software (source code).
>>> Licensee
>>> -shall not (i) use, license, sell or otherwise distribute the Software
>>> except as
>>> -provided in this Agreement, (ii) attempt to modify in any way, reverse
>>> -engineer, decompile or disassemble any portion of the Software; or (iii)
>>> use
>>> -the Software or other material in violation of any applicable law or
>>> -regulation, including but not limited to any regulatory agency, such as
>>> FCC,
>>> -rules.
>>> -
>>> -3.     NO WARRANTY OR SUPPORT
>>> -
>>> -3.1.   No Warranty. THE SOFTWARE IS OFFERED “AS IS,” AND BROADCOM GRANTS
>>> AND
>>> -LICENSEE RECEIVES NO WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, BY
>>> STATUTE,
>>> -COMMUNICATION OR CONDUCT WITH LICENSEE, OR OTHERWISE.  BROADCOM
>>> SPECIFICALLY
>>> -DISCLAIMS ANY IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
>>> SPECIFIC
>>> -PURPOSE OR NONINFRINGEMENT CONCERNING THE SOFTWARE OR ANY UPGRADES TO OR
>>> -DOCUMENTATION FOR THE SOFTWARE.  WITHOUT LIMITATION OF THE ABOVE,
>>> BROADCOM
>>> -GRANTS NO WARRANTY THAT THE SOFTWARE IS ERROR-FREE OR WILL OPERATE
>>> WITHOUT
>>> -INTERRUPTION, AND GRANTS NO WARRANTY REGARDING ITS USE OR THE RESULTS
>>> THEREFROM
>>> -INCLUDING, WITHOUT LIMITATION, ITS CORRECTNESS, ACCURACY OR RELIABILITY.
>>> -
>>> -3.2.   No Support.  Nothing in this agreement shall obligate Broadcom to
>>> -provide any support for the Software. Broadcom may, but shall be under no
>>> -obligation to, correct any defects in the Software and/or provide updates
>>> to
>>> -licensees of the Software.  Licensee shall make reasonable efforts to
>>> promptly
>>> -report to Broadcom any defects it finds in the Software, as an aid to
>>> creating
>>> -improved revisions of the Software.
>>> -
>>> -3.3.   Dangerous Applications.  The Software is not designed, intended,
>>> or
>>> -certified for use in components of systems intended for the operation of
>>> -weapons, weapons systems, nuclear installations, means of mass
>>> transportation,
>>> -aviation, life-support computers or equipment (including resuscitation
>>> -equipment and surgical implants), pollution control, hazardous substances
>>> -management, or for any other dangerous application in which the failure
>>> of the
>>> -Software could create a situation where personal injury or death may
>>> occur.
>>> -Licensee understands that use of the Software in such applications is
>>> fully at
>>> -the risk of Licensee.
>>> -
>>> -4.     TERM AND TERMINATION
>>> -
>>> -4.1.   Termination.  This Agreement will automatically terminate if
>>> Licensee
>>> -fails to comply with any of the terms and conditions hereof. In such
>>> event,
>>> -Licensee must destroy all copies of the Software and all of its component
>>> -parts.
>>> -
>>> -4.2.   Effect Of Termination.  Upon any termination of this Agreement,
>>> the
>>> -rights and licenses granted to Licensee under this Agreement shall
>>> immediately
>>> -terminate.
>>> -
>>> -4.3.   Survival.  The rights and obligations under this Agreement which
>>> by
>>> -their nature should survive termination will remain in effect after
>>> expiration
>>> -or termination of this Agreement.
>>> -
>>> -5.     CONFIDENTIALITY
>>> -
>>> -5.1.   Obligations.  Licensee acknowledges and agrees that any
>>> documentation
>>> -relating to the Software, and any other information (if such other
>>> information
>>> -is identified as confidential or should be recognized as confidential
>>> under the
>>> -circumstances) provided to Licensee by Broadcom hereunder (collectively,
>>> -“Confidential Information”) constitute the confidential and proprietary
>>> -information of Broadcom, and that Licensee’s protection thereof is an
>>> essential
>>> -condition to Licensee’s use and possession of the Software.  Licensee
>>> shall
>>> -retain all Confidential Information in strict confidence and not disclose
>>> it to
>>> -any third party or use it in any way except under a written agreement
>>> with
>>> -terms and conditions at least as protective as the terms of this Section.
>>> -Licensee will exercise at least the same amount of diligence in
>>> preserving the
>>> -secrecy of the Confidential Information as it uses in preserving the
>>> secrecy of
>>> -its own most valuable confidential information, but in no event less than
>>> -reasonable diligence.  Information shall not be considered Confidential
>>> -Information if and to the extent that it: (i) was in the public domain at
>>> the
>>> -time it was disclosed or has entered the public domain through no fault
>>> of
>>> -Licensee; (ii) was known to Licensee, without restriction, at the time of
>>> -disclosure as proven by the files of Licensee in existence at the time of
>>> -disclosure; or (iii) becomes known to Licensee, without restriction, from
>>> a
>>> -source other than Broadcom without breach of this Agreement by Licensee
>>> and
>>> -otherwise not in violation of Broadcom’s rights.
>>> -
>>> -5.2.   Return of Confidential Information.  Notwithstanding the
>>> foregoing, all
>>> -documents and other tangible objects containing or representing Broadcom
>>> -Confidential Information and all copies thereof which are in the
>>> possession of
>>> -Licensee shall be and remain the property of Broadcom, and shall be
>>> promptly
>>> -returned to Broadcom upon written request by Broadcom or upon termination
>>> of
>>> -this Agreement.
>>> -
>>> -6.     LIMITATION OF LIABILITY TO THE MAXIMUM EXTENT PERMITTED BY LAW, IN
>>> NO
>>> -EVENT SHALL BROADCOM OR ANY OF BROADCOM’S LICENSORS HAVE ANY LIABILITY
>>> FOR ANY
>>> -INDIRECT, INCIDENTAL, SPECIAL, OR CONSEQUENTIAL DAMAGES, HOWEVER CAUSED
>>> AND ON
>>> -ANY THEORY OF LIABILITY, WHETHER FOR BREACH OF CONTRACT, TORT (INCLUDING
>>> -NEGLIGENCE) OR OTHERWISE, ARISING OUT OF THIS AGREEMENT, INCLUDING BUT
>>> NOT
>>> -LIMITED TO LOSS OF PROFITS, EVEN IF SUCH PARTY HAS BEEN ADVISED OF THE
>>> -POSSIBILITY OF SUCH DAMAGES. IN NO EVENT WILL BROADCOM’S LIABILITY
>>> WHETHER IN
>>> -CONTRACT, TORT (INCLUDING NEGLIGENCE), OR OTHERWISE, EXCEED THE AMOUNT
>>> PAID BY
>>> -LICENSEE FOR SOFTWARE UNDER THIS AGREEMENT.  THESE LIMITATIONS SHALL
>>> APPLY
>>> -NOTWITHSTANDING ANY FAILURE OF ESSENTIAL PURPOSE OF ANY LIMITED REMEDY.
>>> -
>>> -7.     MISCELLANEOUS
>>> -
>>> -7.1.   Export Regulations. YOU UNDERSTAND AND AGREE THAT THE SOFTWARE IS
>>> -SUBJECT TO UNITED STATES AND OTHER APPLICABLE EXPORT-RELATED LAWS AND
>>> -REGULATIONS AND THAT YOU MAY NOT EXPORT, RE-EXPORT OR TRANSFER THE
>>> SOFTWARE OR
>>> -ANY DIRECT PRODUCT OF THE SOFTWARE EXCEPT AS PERMITTED UNDER THOSE LAWS.
>>> -WITHOUT LIMITING THE FOREGOING, EXPORT, RE-EXPORT OR TRANSFER OF THE
>>> SOFTWARE
>>> -TO CUBA, IRAN, NORTH KOREA, SUDAN AND SYRIA IS PROHIBITED.
>>> -
>>> -7.2    Assignment. This Agreement shall be binding upon and inure to the
>>> -benefit of the parties and their respective successors and assigns,
>>> provided,
>>> -however that Licensee may not assign this Agreement or any rights or
>>> obligation
>>> -hereunder, directly or indirectly, by operation of law or otherwise,
>>> without
>>> -the prior written consent of Broadcom, and any such attempted assignment
>>> shall
>>> -be void.  Notwithstanding the foregoing, Licensee may assign this
>>> Agreement to
>>> -a successor to all or substantially all of its business or assets to
>>> which this
>>> -Agreement relates that is not a competitor of Broadcom.
>>> -
>>> -7.3.   Governing Law; Venue.  This Agreement shall be governed by the
>>> laws of
>>> -California without regard to any conflict-of-laws rules, and the United
>>> Nations
>>> -Convention on Contracts for the International Sale of Goods is hereby
>>> excluded.
>>> -The sole jurisdiction and venue for actions related to the subject matter
>>> -hereof shall be the state and federal courts located in the County of
>>> Orange,
>>> -California, and both parties hereby consent to such jurisdiction and
>>> venue.
>>> -
>>> -7.4.   Severability.  All terms and provisions of this Agreement shall,
>>> if
>>> -possible, be construed in a manner which makes them valid, but in the
>>> event any
>>> -term or provision of this Agreement is found by a court of competent
>>> -jurisdiction to be illegal or unenforceable, the validity or
>>> enforceability of
>>> -the remainder of this Agreement shall not be affected if the illegal or
>>> -unenforceable provision does not materially affect the intent of this
>>> -Agreement.  If the illegal or unenforceable provision materially affects
>>> the
>>> -intent of the parties to this Agreement, this Agreement shall become
>>> -terminated.
>>> -
>>> -7.5.   Equitable Relief.  Licensee hereby acknowledges that its breach of
>>> this
>>> -Agreement would cause irreparable harm and significant injury to Broadcom
>>> that
>>> -may be difficult to ascertain and that a remedy at law would be
>>> inadequate.
>>> -Accordingly, Licensee agrees that Broadcom shall have the right to seek
>>> and
>>> -obtain immediate injunctive relief to enforce obligations under the
>>> Agreement
>>> -in addition to any other rights and remedies it may have.
>>> -
>>> -7.6.   Waiver.  The waiver of, or failure to enforce, any breach or
>>> default
>>> -hereunder shall not constitute the waiver of any other or subsequent
>>> breach or
>>> -default.
>>> -
>>> -7.7.   Entire Agreement.  This Agreement sets forth the entire Agreement
>>> -between the parties and supersedes any and all prior proposals,
>>> agreements and
>>> -representations between them, whether written or oral concerning the
>>> Software.
>>> -This Agreement may be changed only by mutual agreement of the parties in
>>> -writing.
>>> -
>>> diff --git
>>> a/recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.bin
>>> b/recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.bin
>>> deleted file mode 100644
>>> index
>>> 84ab5b0deebf214cd64834ea900376db99e6625f..0000000000000000000000000000000000000000
>>> GIT binary patch
>>> literal 0
>>> HcmV?d00001
>>>
>>> literal 368957
>>> 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


