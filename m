Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D93DE00A38; Mon, 18 Sep 2017 09:44:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C12FE008D2
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 09:44:56 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id d8so433986pgt.4
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 09:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=OhpD4MncpA/pAE8O9RCzQ0gaA04yOnR9wsOnXJfDUnA=;
	b=AfZhdBSAeWKXQUJwhVOpN+ry+iEq4nDNQJfDwvsHM+KGqwyS0CpixpyodWUESlYSq1
	lqtM9aXMo++zbXqnMUAP/C90nd8P3IGnyPKyj/jJKoYItww6KkqNlIZvONVp4e9sPjFw
	FL09dr/NQvKu7XgnQav1KaCcxmpj/Ny7v6SQvfRGCWDd5fiW9syj7JXhJUSOp5dTpX66
	26j538DgI4DIAe4MtPG84zPvjjdzcYpgR5p70Cj0strJEEXAkIwxSEVojK9dNopNUimp
	8gTw9Ab+6ianQfn79JsTyRS6eceyP3J0uWTjWRdZAtfH/QLMCDOk6kO5vxACC4bU33yo
	hjaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=OhpD4MncpA/pAE8O9RCzQ0gaA04yOnR9wsOnXJfDUnA=;
	b=SrrncE4Rn1OkTgDTD2aV/eICJvHYxBCu6zvetzz1YLmBdDHKgPiGbGudmTxPAYxWBx
	LVYedx8mxahJFaurc2WZIpmg+BUmzFf6HkwO6JeBm4nMzjk64Nv8lM1IYMemN4xgAbWe
	hanCJABUspP96wmdpBxks/6eRudfHov9aN1FbcjZ+QpNGzmvEfovJtuYmFQ9e2HBKl0u
	I8NqcbEfg173X0HxxPjYVwpftuYQM648/rCiL7s6IkicNWyYLhPEdGEcSDWgnBJof97A
	QLNHs1J6FHZF6+ligh4+RpDq2/I4vOSGH4tLqLNy883nYzf8aetDDvbOiDmZ13xIixdy
	gmCA==
X-Gm-Message-State: AHPjjUhTEk0UOKO3fwxMh4VX6vgCmThZSNzQ8H7zeZluXYwzmx8NuKFw
	ZY8mI/Ll0+XD3w==
X-Google-Smtp-Source: ADKCNb6afo5ESsqmRjDVuqnJwgEAe71+MpYEACMWjE6dPVVy2Byt2Iy7PpNdtKeXSmh8CiPMPwH3cA==
X-Received: by 10.84.196.131 with SMTP id l3mr33081864pld.195.1505753095738;
	Mon, 18 Sep 2017 09:44:55 -0700 (PDT)
Received: from apollo ([2601:646:8882:b8c::a20b])
	by smtp.gmail.com with ESMTPSA id
	y16sm9829993pfl.99.2017.09.18.09.44.54
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 18 Sep 2017 09:44:54 -0700 (PDT)
Date: Mon, 18 Sep 2017 09:44:53 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
Message-ID: <20170918164453.c2ieekk4wdfcetav@apollo>
References: <9082b1858dda4304999ba4e2ceacad5e@de.bosch.com>
MIME-Version: 1.0
In-Reply-To: <9082b1858dda4304999ba4e2ceacad5e@de.bosch.com>
User-Agent: NeoMutt/20170912 (1.9.0)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error messages building WIC image
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
X-List-Received-Date: Mon, 18 Sep 2017 16:44:57 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Sep 18, 2017 at 03:52:18PM +0000, Eswaran Vinothkumar (BEG/PJ-IOT-EL) wrote:
> Hi,
> 
> When I tried building a WIC image , I am seeing the following error messages.
> 
> WARNING: /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-kernel/linux/linux-iot_4.9.39.bb.do_compile is tainted from a forced run                                              | ETA:  0:00:05
> Initialising tasks: 100% |###################################################################################################################################################################| Time: 0:00:09
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> WARNING: iot-eval-image-1.0-r0 do_rootfs: The license listed Firmware-ti-connectivity was not in the licenses collected for recipe wl18xx-bluetooth
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> ERROR: iot-eval-image-1.0-r0 do_image_wic: Taskhash mismatch d04ed8e44344c09b715faf7f046a2943 versus 8b6b18a1996ba1c6af0fc8b285e5e4b7 for /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic
> ERROR: Taskhash mismatch d04ed8e44344c09b715faf7f046a2943 versus 8b6b18a1996ba1c6af0fc8b285e5e4b7 for /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and this needs to be fixed.
> NOTE: Tasks Summary: Attempted 3759 tasks of which 3718 didn't need to be rerun and all succeeded.
> 
> I could also see the WIC image being successfully created. May I know how to solve this issue, as printing these messages during build results in wrong interpretation.

usually this means that DATE, TIME or DATETIME are being inserted into task checksums. You might have to include them
in vardepexclude list for particular tasks. You might use bitbake-dumpsig to first find out which variables/tasks are
including these variables first.

> 
> Mit freundlichen Grüßen / Best regards
> 
> Vinothkumar Eswaran
> BEG-PT/PJ-IOT1
> 
> 
> 

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


