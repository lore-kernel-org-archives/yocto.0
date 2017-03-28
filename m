Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A2FEE00B01; Tue, 28 Mar 2017 04:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ranshalit[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19A59E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 04:16:59 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id w43so18823280wrb.1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 04:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=llggN38bBxPaLpqUVl9FSrHhwgFw0rhMIllw6Nb5kFI=;
	b=SpxDbK5wapLc/ZL7R3T8kixVw85e4LuBZTIojky0wHvXiWTBFPw8akl5D4K3hN892K
	nbdhT3gsTm/zMZ9NCyPghI21MvwrB2CvD2ERHBVbRGLg71we5CPKMW9CCV2/XBMLut16
	E/sAjEc6Es0S3wwtgzmCPOS21UittxzuMVDmQC552XMEMzkspkFilBMErFYmywgLU3td
	tqqv0rp56lsQl8+dsElaP+CAYwa3Wm28FskGsCyBZ6jU2m5kfzzVC0SYxhXcEKK9taoQ
	87H7Ks1Vkd9BtprQQ79sh2GKawHR+xLdE4v4xNSr1Dw5as1ePjEMWefDR3BGR9lzaTmD
	azVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=llggN38bBxPaLpqUVl9FSrHhwgFw0rhMIllw6Nb5kFI=;
	b=pdYpX4aqdCz8S52UsdTDsUha3ZhsS3yyMyOBk0afP5EoyRsbw+k9aTMPxd+C39FIDY
	duu2vI1AHs3QKQJd8CzUh4MDmWrBfzha4ZAVh/vhXNBCYAfAqZxIr7I2sWF0XJbe9sbO
	NmgSD9iFbSqKdKCP14592DkwK+uR0RZ+jMtS6zHw4PDFGYXM2k+dSdggQxtZ12cHEYn8
	Ran0P7hbNpk/M+9enuNhRotMlXl+NyCa5for5Mc7sMtJ3RkyIMOxK/i2vJBGXR2cRTjb
	0PuM6oOIcG1SJlk5voGRwkJsoO6a9EBAN1QOnqBCN/SeU2pW0dMuN1+/K11hKc6MQ/xs
	OJ8A==
X-Gm-Message-State: AFeK/H3WUSdObJAaAQW7ld2/TpGUBxfPuYDa/XZg15mOh9a4/x2UTShOdvcQ+BxWf7oCOq79qb8ioy/EiJqaCQ==
X-Received: by 10.28.29.88 with SMTP id d85mr13642855wmd.56.1490699819151;
	Tue, 28 Mar 2017 04:16:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.163.6 with HTTP; Tue, 28 Mar 2017 04:16:58 -0700 (PDT)
In-Reply-To: <CAJTo0LaYATrmbQ6cWOAMFFVk_ZoRnt7VBUeDs8cAnMxATtParw@mail.gmail.com>
References: <CAJ2oMh+Dj3SZ5Tf8aF3VRhpsboah-4qevGC3v+5q=vpOdQ2V0g@mail.gmail.com>
	<CAJTo0LaCynfLyy99eC0=AN188Amh+xFwsy0ZMSdSSE0Z8ACazQ@mail.gmail.com>
	<CAJ2oMhJL9e6TX5nY=-xNHvKA2ci4+xXMfc3epaJz9UBtZcOMyQ@mail.gmail.com>
	<CAJTo0LaYATrmbQ6cWOAMFFVk_ZoRnt7VBUeDs8cAnMxATtParw@mail.gmail.com>
From: Ran Shalit <ranshalit@gmail.com>
Date: Tue, 28 Mar 2017 14:16:58 +0300
Message-ID: <CAJ2oMhLy+3N8Qez5PNXyW_Md-W=O+wxjvh4YJuST2aVWZq2o-Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: package managers
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
X-List-Received-Date: Tue, 28 Mar 2017 11:17:04 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 28, 2017 at 1:25 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 28 March 2017 at 11:00, Ran Shalit <ranshalit@gmail.com> wrote:
>>
>> I understand from this that in target it will be possible to install a
>> package, using the other package manager.
>
>
> Why would you want to do this?
>
> You'll need to install the package management tooling, and the database of
> the one you install after the rootfs creation won't know about anything that
> is already in the rootfs.
>
> It's a lot easier to just pick a package manager and use it consistently.
>
Ok, Thank you !

> Ross

