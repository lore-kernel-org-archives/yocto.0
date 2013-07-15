Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f174.google.com (mail-ea0-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97CB8E013DE
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 15:44:49 -0700 (PDT)
Received: by mail-ea0-f174.google.com with SMTP id o10so1023eaj.5
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 15:44:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=oAmBHMy0jgnQXBeg/Awz16KCRk7jyNL/1HQZey3fNuo=;
	b=JpjK8yIH11xO2N7rs7sv2SaOXb5It0d5hiPesw1lrfHFS4KMA9XYz9MluxBkRtXDQ/
	tcnZVwqkSBaiGhfXrdwBZn0nU73SFpBOUaHlySSyX/RhjtmLNEUpnnOJFJtqAqalRQw3
	cUQryyvyhtXvsoypHeJLCSbvOMBbE8O9lb3tBhngypPo+v6JRqRrBgPKRroLt1lG/pdm
	vAQZ9OH9NDVaaFCQDj+OxyGqHppSW+ymTMiU/Swb/faNAvKIbJLJq4n9RzsncfXgwFql
	t/aX62F/ehGPQdBToRdcGJADTUuaT6FQsZVd8Tp0e4YGazprmTaSGJXfyoga4kqCtfE+
	etQw==
MIME-Version: 1.0
X-Received: by 10.15.102.68 with SMTP id bq44mr5880949eeb.89.1373928288838;
	Mon, 15 Jul 2013 15:44:48 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Mon, 15 Jul 2013 15:44:48 -0700 (PDT)
In-Reply-To: <62673661A504604B856269DAADA8BC2820C765D5@ILPTWPVEXMB02.ecitele.com>
References: <62673661A504604B856269DAADA8BC2820C765D5@ILPTWPVEXMB02.ecitele.com>
Date: Mon, 15 Jul 2013 23:44:48 +0100
Message-ID: <CALmOhgnpQr7zTVoSTCjJ3SFzOBuWAJJMpr4Lo9XE3Ax=7fM6qA@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
X-Gm-Message-State: ALoCoQnzRzjBImhI5DSnwn2ALzFh3tGQcqDPmina6/yT5KHIhoA724CS9jXho4+3J1mFs3L4viqz
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MACHINE setting
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
X-List-Received-Date: Mon, 15 Jul 2013 22:44:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 15 July 2013 16:28, Michael Fainstein <Michael.Fainstein@ecitele.com> wrote:
> How can I build packages for different MACHINEs without changing local.conf?


If your local.conf contains a '?=' MACHINE line

e.g.:

    MACHINE ?= "qemux86"

then you can override this on the cmdline

e.g.:

    MACHINE=qemuppc bitbake core-image-minimal

But if your local.conf contains a '=' MACHINE line

e.g.:

    MACHINE = "qemux86"

then you can't override it on the cmdline.

