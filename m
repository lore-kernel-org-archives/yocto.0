Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF849E00C37; Sun,  9 Oct 2016 07:44:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D7E2E00AD2
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2016 07:44:29 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id b75so5659485lfg.3
	for <yocto@yoctoproject.org>; Sun, 09 Oct 2016 07:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WpdQ7PH+5Z3YJz2fNfjbgTqiObSDWUTt4v3b/9KvfI8=;
	b=rd3DZ4oNbfBe1VpLq/9AsyfJarppkh4zVIER3REFYLkBLkVmajsKHa6OrFaE4LtKhq
	eIJobXDS7LdNzdeplMdmuz1S828Hf/K3QCXv6PxEFljHbk09OFYyUM++ecHF1B+GfI6T
	sM3rDX1/3uevSHLlt86ExOovLd8fYM0mRe+QZK4qkBiOupyXaIvqu6ZRGmpCU9dyX8+t
	5pxzfh1mX7fFnJQw9nigC0uTl5W3Pwpu0vHL/DuYVcoBERPKqo00e533uhMTOZ3jzrvd
	B67KGKL7OfMeGMOT/NxZhLMH7aNC1G5oVCSvsWxNWXMp2ScNna99T7PYoyTqRT1UwyFE
	d+KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WpdQ7PH+5Z3YJz2fNfjbgTqiObSDWUTt4v3b/9KvfI8=;
	b=MModoCDbXZriInlnkQZ9KVzFR6qYTSffsSX5g4x5Jc/QwmKb2sQZDlAB+fVAs4j9vD
	xSZniHjxDurKmCyxSRlS+3H7729ntx+MkA2R/2kHUmlswn3OZDFAv6kVwfCH7+ISh8ES
	NvN7nm/zN0lNtAhRvLXK8Orpc+0Ce38HimTl38vne0Goi6tPQpXlCV3gNmmW6B2mOwoX
	yIQFvhGyomJwP7rbQjiM/3Bilu/aVP7UdnvRR+2inh5Lvg6F+j9MIT0Q46wYJqWJflGG
	H7XyJ9m+Ft9dVUVOShu/iiola2J1Y+4Mx6ERkttZbWHT94HXg79U+2c4QnJ3L1GVjmCI
	gJOw==
X-Gm-Message-State: AA6/9Rmce83iixfYTSONfTA9e55vUH9YWhInUJQyMG7HpRns7ENOz7Im9/8QTc6+YuyZ1AHgzUiNXovaJa3DJQ==
X-Received: by 10.194.238.162 with SMTP id vl2mr4720693wjc.39.1476024268772;
	Sun, 09 Oct 2016 07:44:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.135.212 with HTTP; Sun, 9 Oct 2016 07:44:28 -0700 (PDT)
In-Reply-To: <1d2368a9693d7a4fcaa1f83edbbfb851@reliableembeddedsystems.com>
References: <e31067aeb8accb65a84da105dad48944@reliableembeddedsystems.com>
	<CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
	<56993190d475014fd9f289fdad7db19e@reliableembeddedsystems.com>
	<CA+n--H8NN32sFJVQFrODtm_99aR5D60kHnK1o0S5B_RWqLfkBQ@mail.gmail.com>
	<c2bd83f60d7dee07af64bc0796ae28c0@reliableembeddedsystems.com>
	<CA+n--H_F3fo3_zEW=u_ySEXj+T3-7UWWy0Yw651JrvEfeCx2Lg@mail.gmail.com>
	<1d2368a9693d7a4fcaa1f83edbbfb851@reliableembeddedsystems.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Sun, 9 Oct 2016 07:44:28 -0700
Message-ID: <CA+n--H9K-MJ0iiLdqojLMWFLZ+4dKD4Vtx321gi47iyvBafZyw@mail.gmail.com>
To: gmane@reliableembeddedsystems.com
Cc: yocto@yoctoproject.org
Subject: Re: Y-AB PublishArtifacts toolchain wrong dir
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
X-List-Received-Date: Sun, 09 Oct 2016 14:44:34 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 9, 2016 at 6:28 AM,  <gmane@reliableembeddedsystems.com> wrote:
> Hi,
>
> On 2016-10-08 18:17, Bill Randle wrote:
>>
>> Hi,
>>
>> I think I would leave the toolchain artifact as is, but just surround
>> the the 'cp' with an 'if' statement. E.g.,:
>>   if [ -e <path-to-x86-toolchain> ]; then
>>     cp <cp-args> <path-to-x86-toolchain> <destination>;
>>   fi;
>>   if [ -e <path-to-x86_64-toolchain> ]; then
>>     cp <cp-args> <path-to-x86_64-toolchain> <destination>;
>>   fi;
>>
>
> This sounds like a brilliant idea. It looks like now I have the behaviour of
> the good old Y-AB plus md5sums and friends and being copied over.
> What do you think about this patch? [1]

Much better. Now just move the mkdir into the same if block as the
copy like this (no point in checking the same thing twice):

+                    command=command+"if [ -e " +
os.path.join(deploy_image_dir, "poky-*i686-core-image*.sh ") + " ];
then " + \
+                                    "mkdir -p " + os.path.join(DEST,
X86TC_PUBLISH_DIR) + "; " + \
+                                    "cp -R --no-dereference
--preserve=links " + \
+                                    os.path.join(deploy_image_dir,
"poky-*i686-core-image* ") + \
+                                    os.path.join(DEST,
X86TC_PUBLISH_DIR) + pipeline + "; fi;"

and the same for the x86_64 case, of course.

Then submit to the mailing list in the standard format (look at other
patch submissions for examples) Also, include "[yocto-autobuilder]"
and file you are patching in the Subject line [1] and Cc:
joshua.g.lock@intel.com and pidge@toganlabs.com. Also, add a commit
message in the body of the email.

    -Bill

[1] E.g., Subject: [yocto-autobuilder][PATCH] PublishArtifacts.py:
deal only with built toolchains, cp also md5 and manifests

>
> [1]
> https://github.com/RobertBerger/autobuilder-patches/blob/master/before-install/0004-deal-only-with-built-toolchains-cp-also-md5-and-mani.patch
>
> Regards,
>
> Robert

