Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF088E0053A
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 06:27:29 -0800 (PST)
Received: by mail-ig0-f170.google.com with SMTP id m12so1740472iga.1
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 06:27:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=nFNvx+k1+2wP4j8qmkVbrI3N53b+aROzk0eS377ileU=;
	b=V5Ac63FJ3EL2Ak/UwMqh5nO/YCCeCeltNofjPCvv77sXRBNe4BIq/KhKK8HLTYcWaF
	YDoGE2D0oNlcvKNmyfLkpksi+nQs3SIjLrS/vMjaIQeCmzELFdwTvSyFOvQ831P6rdw+
	EUmAADqm/+kvfSpMlqD7FEbyKTOzekjxfaSjJbGbIj7K8Rr8fOUF/+8AIn5y4goB3+d/
	49T9Dgg9t7YPIzlWXeclegRwca6DY9pWd8eCVsWoJZQT+FS7obxe9oQYE4GLKXCXKaNC
	7i93Wl0wxgbSw6MzRpktEoYvwlhRP6zQg9DMpEvm9zmd4toI15IfyZClLgv8XGLCrWJ0
	seQg==
X-Gm-Message-State: ALoCoQmH4YolujNE32XI9J85yRF6pt4MlPtthkUiTKIV2bsZJSqKJOAqXEKIzIDR0bUeoaMhJpjB
X-Received: by 10.42.33.65 with SMTP id h1mr936670icd.72.1392215248775;
	Wed, 12 Feb 2014 06:27:28 -0800 (PST)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id h6sm8959277igy.8.2014.02.12.06.27.27
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 12 Feb 2014 06:27:27 -0800 (PST)
Message-ID: <52FB84CE.8020204@linaro.org>
Date: Wed, 12 Feb 2014 09:27:26 -0500
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Intel Galileo + poky review
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
X-List-Received-Date: Wed, 12 Feb 2014 14:27:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Here is an interesting review of Intel's recently-released Galileo board
from a moderately influential person in the Arduino world. Since the
board ships with poky, this review is also somewhat of a review of poky too:
http://tronixstuff.com/2014/02/12/review-intel-galileo-arduino-compatible-development-board/

It's not a strong review, although the reviewer does admit he's not much
of a *nix user.

