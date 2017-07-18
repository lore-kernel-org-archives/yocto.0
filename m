Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82F0FE00C3D; Tue, 18 Jul 2017 05:58:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.46 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C62E00C3B
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 05:58:43 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id z78so13026343lff.0
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 05:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FMOPRsJ9i3Pdbd2lzT+OPTJFWZjdO7xpu2nuLmngjJo=;
	b=LvJtouEHVQvgcYyCQ+/HR8WRMC3JVg62uV1/WuB7fwDGB9FaIxtf6aXDKFvfDlBnpJ
	055W+6fp/EYhsn+LWsH1tgSERa4Umjubj51GG+1NK2euhNzU1jkTz0Nci78dNEuIbkcu
	UNLRHKW8PHjsVtw9Oo6mDpTNms38j9VkHvSFPcuceGNkmpLORnELrAIKTizFr43yrVoh
	szNF/swQGfgUof44PDx3LG+jo2DCG7dn8lEQ64Ci3kj1fD/24wA6dWD7dqYWTzJGahjr
	nChfjhJesc8ErrdTFQaCNUzDg9idWR3pQrVOZG2cw83Mqv7yD9cewmNwBXMCH0gIqP7e
	riKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FMOPRsJ9i3Pdbd2lzT+OPTJFWZjdO7xpu2nuLmngjJo=;
	b=qtzLgfQWCsf+h961W+07o/pECyJTTkqhfv8NQJPoWXj+njx+cZuQxAbwtbDNIXYRM8
	lop1S3z3fDddbgE13m3fGF6PVVjFBZ/A6Uw3Ul1Egm4uEhbjnfLX3RfvCXg/+QtDycGv
	16iRI78CddoGqAakm5y7EieiVUqq4bVNOmIDR2O8dgdpB6WrY46HqtT3w4SeXdmcuCy3
	Ke4t6/yipPgourOl2XQwCURtym9dgWZpG3LC+uOvvrwrvr4fMqF9DsXTEO108uNr6Ssv
	sACOI++BEL9dOBYDsYUZP/iA+/6BFGvjDp22CVyv4S5eCsXPv/7lBDwZexBtLKYpEiY6
	nG9w==
X-Gm-Message-State: AIVw110AfHmbn7sBvVpcdRYJqBmBAt+YNEf4Bjkc2Hp2NHSbVHWmv7Rh
	z+Le6+F+ipbCnpkPCFwiKY+p+18+ynx9XGE=
X-Received: by 10.25.17.218 with SMTP id 87mr656910lfr.129.1500382722610; Tue,
	18 Jul 2017 05:58:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.196.17 with HTTP; Tue, 18 Jul 2017 05:58:42 -0700 (PDT)
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Tue, 18 Jul 2017 13:58:42 +0100
Message-ID: <CABatt_xOTsWEgJDaYepdFpF6_2Pk8UcCiXQBZddGV34MZPB2Yg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problem building kernel FIT image with initramfs
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
X-List-Received-Date: Tue, 18 Jul 2017 12:58:45 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Using Yocto 2.3 (pyro) I was trying to create a FIT image with the 4.9
linux-fslc kernel and an initramfs image.  following the instructions
it failed during do_bundle_initramfs.  After debugging I found that it
moves the fitImage file to fitImage.bak and then runs a second pass
and renames the new fitImage to fitImage.initramfs but fitImage is
never created on this second pass but  fitImage-${INITRAMFS_IMAGE} is
created.

If I comment out the line that does this rename every builds fine

echo "Resoring Kernel Image"
for tp in $tmp_path ; do
  type=`echo $tp|cut -d "#" -f 1`
  linkpath=`echo $tp|cut -d "#" -f 2`
  realpath=`echo $tp|cut -d "#" -f 3`
  if [ -n "$realpath" ]; then
    mv -f $realpath $realpath.initramfs
    mv -f $realpath.bak $realpath
    ln -sf $linkpath.initramfs ${B}/${KERNEL_OUTPUT_DIR}/$type.initramfs
  else

    #mv -f ${KERNEL_OUTPUT_DIR}/$type ${KERNEL_OUTPUT_DIR}/$type.initramfs
    mv -f ${KERNEL_OUTPUT_DIR}/$type.bak ${KERNEL_OUTPUT_DIR}/$type
  fi
done

