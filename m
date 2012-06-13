Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1832E006D9
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 13:53:08 -0700 (PDT)
Received: from mail-wg0-f44.google.com ([74.125.82.44])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 13 Jun 2012 13:52:53 -0700
Received: by wgbdr13 with SMTP id dr13so701272wgb.13
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 13:52:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=bH8yH/dcfJ2J7QRF5NrOib0N6kf4jxtSY+j3RxM+NuM=;
	b=h2hqs5kdgCpUeTpVhVyHVPJELjgC+HgdjyuIZJbXKL3E8RNI3Pt/0UCyRV6CKUED8i
	qMORpQ5PYEgyuCkajbt3B/7ooAJXZgrGK4aAV/MKdEkf4q3Av4UiabAjOm9fn3Pr2l8Z
	H/sNlBFk2G1E+uj9GnzIFxCpy5fegiPTsIVIbg2XzZ8tSY/C8oRJtm1yV80L8CeWrHDt
	YnFleLMLRtGuDWSkKmG57ITknl5U8a7boCNLtPPS3RWLQbhZa4v11YYd2/HOGuxP8X5m
	vCdbo7TKhzflN+ZuIDmyNCnNiM0zh82zIAg1VoZitzTGbsWj0Rurtupsv4dpDKlJbPjw
	2tXg==
Received: by 10.180.78.233 with SMTP id e9mr12733422wix.5.1339620771511;
	Wed, 13 Jun 2012 13:52:51 -0700 (PDT)
Received: from elizabeth.local (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id db7sm14139393wib.6.2012.06.13.13.52.49
	(version=SSLv3 cipher=OTHER); Wed, 13 Jun 2012 13:52:50 -0700 (PDT)
Date: Wed, 13 Jun 2012 21:52:48 +0100
From: Ross Burton <ross.burton@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <66686EEDFFCF448E9EA9D435AD58344B@intel.com>
In-Reply-To: <4FD8FC7A.6000209@linux.intel.com>
References: <21DFE0D0610B43B982449CB678019727@intel.com>
	<4FD8FC7A.6000209@linux.intel.com>
X-Mailer: sparrow 1.4.2 (build 959.4)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQm6PBuO1TUGqUAqO/aKT4Avc/wRKq26ggwgin5GkRFY/58qfcqka6S+6tABPo6rbwfx78pB
Cc: yocto@yoctoproject.org
Subject: Re: More useful generic-x86 machine
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Jun 2012 20:53:09 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Wednesday, 13 June 2012 at 21:47, Darren Hart wrote:
> Seems reasonable to me. We should probably have 32b and 64b of this
> machine as well.

And x32=E2=80=A6 :)

Ross =20



