Return-Path: <philippe.gislard@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCE68E00DB1; Fri, 19 Jan 2018 11:55:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (philippe.gislard[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48CA5E00D5F
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 11:55:04 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id j21so113263wmh.1
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 11:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YlKmvHTtuLnJwOQzi1uXaB1VpxDM0vPlWHmvLR/VSY8=;
	b=kn3Gw5PRLJyQNGEvYfm7pqIQiTo1RponPIbLJ87AfwGhi6fk/Z4VsUC/k9kw/QY+ft
	r+JrTU0l6fRBiUhyD/1LTb+MBADKk3qJvn0QhhH1pEKL8RbGlDfk75ptynmSANs1GeQt
	l6wc9kCgjpuHXOUbuTWRS+FR1nECWr+flxAXLQ8r7zevt2NRdqkTYZ2xdyykPif5rBHg
	YTwiByT1g1OazC3eK5W8WK+hk4Z/6LC17RkRF71Af/n6kv9TcMS4YDbu5PKQ+T01a8rn
	UuwbFb4mYDRkUkhrg2Y7B3x9Dg/9fjOL2XK2jic/6MJb9tubiEWsl1pM6CYBiOZ0SM0G
	MprQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YlKmvHTtuLnJwOQzi1uXaB1VpxDM0vPlWHmvLR/VSY8=;
	b=heHjRPhVZ9+NyS+2PVfDNlWsUR5WEg6TY0jeInyDhc3ZgVzsSRytJyVqwIDgilKfnI
	VI5omVeatnFJidkZdY3MB+chd58q5b3a5hJL5NCWfPkeG8kHRI+eOwW1gQbrs366gpHK
	mpC3bBSBozCvFYyWnzdlHRPXHuDrMnfVld0uTIAVODe8zj/o2AYVAOYsaVCVVfynkbUm
	AtDTm9I00lODnf64kq0QM4er8JjlbD+Vbbsb1RTgCm7Hcbl356r4GLGeNVU53VfNbJ+G
	HQqvUh9OW7uNDOTTIrPjUGqEoVJr9pFIznPfsO1h/fgTID1CRhWVrq9mnowqibIhMDhK
	I04g==
X-Gm-Message-State: AKwxytdVPW0+XjfsAR2jYML1koVX/W7W89B8kg0sJzYBdowzov/3VDXg
	f2RipKbZs8KANQhfZDYmAmnMexNvxjkB/DiE0CKYHcQ4
X-Google-Smtp-Source: AH8x224v2PqW7sY6wa/ur78+o4XXtvn5A3x06o838MP/T0WCC2O3ikfi//lHvBr7gABRYiKGTnew8nH8hFJ89LljVVw=
X-Received: by 10.28.47.73 with SMTP id v70mr29358wmv.41.1516391702778; Fri,
	19 Jan 2018 11:55:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.178.232 with HTTP; Fri, 19 Jan 2018 11:54:42 -0800 (PST)
From: philippe gislard <philippe.gislard@gmail.com>
Date: Fri, 19 Jan 2018 20:54:42 +0100
Message-ID: <CAM0bAiUQ05Z0R=MN-nLCFjCE5eu29bs6rTORJSKeia9Vj19wTw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [Eclipse Yocto Plugin] Standalone pre-built toolchain
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
X-List-Received-Date: Fri, 19 Jan 2018 19:55:04 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I tried to follow this wiki:
https://wiki.yoctoproject.org/wiki/TipsAndTricks/RunningEclipseAgainstBuiltImage
But with Eclipse Oxygen and the corresponding Yocto plugin.

The Plugin won't let me save the Standalone pre-built toolchain.
Clicking on "save as ..." or "Rename" has no effect when the radio
button is set to "Standalone pre-built toolchain"
When I close and reopen the seting window, my settings are lost.
Clicking on "save as ..." or "Rename" works well when the radio button
is set to "Build system derived toolchain" and my settings are saved.

Am I missing something ?

Also, when I try to setup the "Standalone pre-built toolchain" it
seems I have to rename the sysroot/host_folder in the sdk installation
directory.
By default it is named with: ${SDK_ARCH}${SDK_VENDOR}-${SDK_OS}
It seems that if SDK_VENDOR contains the word "sdk" the plugin won't
accept the directory (ex: "i686-mysdk-linux").
It displays a "Toolchain and host arch mismatch." error.

Should I downgrade to a previous eclipse version ? Neon, Mars ?

-- 
Philippe GISLARD

