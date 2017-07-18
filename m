Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D1DAE00C40; Tue, 18 Jul 2017 06:01:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D23B5E00C3B
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 06:01:06 -0700 (PDT)
Received: by mail-lf0-f47.google.com with SMTP id d78so8712878lfg.3
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 06:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=JZa5aXpS+ymrMmcRRezyZ/e1EeWv13evXel4Yiqoyj4=;
	b=jP8fe3gsr9xwz8l/zRBzncPw5qib686TGVuawRvzydwMwJi/NKeLD4eH99A1Xphsyp
	Q9rTOdN+m5p/gkmR/ermTAogNAvGtnfix9ILGrZvBXNLI7U/mC3xThFsGm4TWWiqxiA2
	kUIbc6R7Fnxl0mR1LtistEdvGMxDMC8IH+PczvMILKeC1Oi0nYeqpkF8J7kD5yU6/XWg
	Hbq+yEqFSWb1L+smyPPGN0Stp5cY/KtG1ricU8QIG9T6AiY0LTdPj9aqWIMMplSwCJrR
	U+TfNuAaMwJZ9Arr2iYZzonk5erfZ+nctQd2KFMF1alqX2H3o3IPvODJ2ok/bv/JATzd
	A2nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=JZa5aXpS+ymrMmcRRezyZ/e1EeWv13evXel4Yiqoyj4=;
	b=mv+2Wbg+nxxNz4RkgiPC0o2ZBMUFPZA4e+01cGahu5KUZdK+IqiIFVDD6VU5wTGLg8
	KNAj0mUuoysR+iteJCZg7HIn7OWfMh431cnDmfU+6CTpesdsRw+OtN8W50OqXfjiNf4N
	07ixIIflX+2LilPHGRGsnoUE6Q0isC1wL8KGKo79516/a0syvUi/dBJjvMaTTiF2IFVS
	f5ZTDr9IsZtpqEcWdoqwMnrtN3dXsIykowB6yUg4JROK91d7sR+wsOHQNav6xGv0lWmq
	H5bhEF/4WgrIwYJOywvRTY+HgTx6XASmAMiOYDapuoy18ZeK5lo0JNh4bGiCyqkVSE2q
	OfUQ==
X-Gm-Message-State: AIVw110u2j96myJWM5o3WUW0gZBkC0b4xD2XOIRJBC7bQE+rgUb7OOic
	BYTTThgFNBpkGWgZApvCuFBNSQbhZFb/FKs=
X-Received: by 10.46.21.88 with SMTP id 24mr728613ljv.98.1500382865474; Tue,
	18 Jul 2017 06:01:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.196.17 with HTTP; Tue, 18 Jul 2017 06:01:05 -0700 (PDT)
In-Reply-To: <CABatt_xOTsWEgJDaYepdFpF6_2Pk8UcCiXQBZddGV34MZPB2Yg@mail.gmail.com>
References: <CABatt_xOTsWEgJDaYepdFpF6_2Pk8UcCiXQBZddGV34MZPB2Yg@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Tue, 18 Jul 2017 14:01:05 +0100
Message-ID: <CABatt_wTBZYa2DNgB3_PqYay_SFUpcr=Hghg4=xyvpfbJeGt8Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Problem building kernel FIT image with initramfs
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
X-List-Received-Date: Tue, 18 Jul 2017 13:01:07 -0000
Content-Type: text/plain; charset="UTF-8"

Sorry hit send before finishing email.

So it looks like do_install and do_deploy are expecting
fitImage-${INITRAMFS_IMAGE} so is this renaming required anymore? and
if so is this a problem with the freescale kernel?

Many Thanks,
Martin.

On Tue, Jul 18, 2017 at 1:58 PM, Martin Townsend
<mtownsend1973@gmail.com> wrote:
> Hi,
>
> Using Yocto 2.3 (pyro) I was trying to create a FIT image with the 4.9
> linux-fslc kernel and an initramfs image.  following the instructions
> it failed during do_bundle_initramfs.  After debugging I found that it
> moves the fitImage file to fitImage.bak and then runs a second pass
> and renames the new fitImage to fitImage.initramfs but fitImage is
> never created on this second pass but  fitImage-${INITRAMFS_IMAGE} is
> created.
>
> If I comment out the line that does this rename every builds fine
>
> echo "Resoring Kernel Image"
> for tp in $tmp_path ; do
>   type=`echo $tp|cut -d "#" -f 1`
>   linkpath=`echo $tp|cut -d "#" -f 2`
>   realpath=`echo $tp|cut -d "#" -f 3`
>   if [ -n "$realpath" ]; then
>     mv -f $realpath $realpath.initramfs
>     mv -f $realpath.bak $realpath
>     ln -sf $linkpath.initramfs ${B}/${KERNEL_OUTPUT_DIR}/$type.initramfs
>   else
>
>     #mv -f ${KERNEL_OUTPUT_DIR}/$type ${KERNEL_OUTPUT_DIR}/$type.initramfs
>     mv -f ${KERNEL_OUTPUT_DIR}/$type.bak ${KERNEL_OUTPUT_DIR}/$type
>   fi
> done

