Return-Path: <mhubig@imko.de>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B72E0148E
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 09:00:26 -0700 (PDT)
Received: by wibhq12 with SMTP id hq12so2788846wib.11
	for <yocto@yoctoproject.org>; Mon, 02 Jul 2012 09:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZS0YJnrOjc2Eh4C8vVwhqU8KvNYzcT4TPdF7K6i1WCM=;
	b=VRf/tW+KgjMVyFJoezlbO/5KVcXv8Q1FwGpq/YJ8v/gf1Jq6IsfIsrIdSEo4cmv2R0
	/51u379VL3gNKAb9Tiq601dZyC1wiP81CP15qeAmFgf1JnDXDSGEceNop8+wGjf2SL/5
	sk+yXBhmuOub52uImzhB/8zbQ1X6wbYKrDibs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=ZS0YJnrOjc2Eh4C8vVwhqU8KvNYzcT4TPdF7K6i1WCM=;
	b=Ng55sUdNllpcACVY+I3KkxTwxIetzgEuiSclTzJEWs58uSllIYVngEGbGgIT+4VjtV
	0z1WA2xvl8OzOrMSbILXQ8lRuzskRr9FfQl+DnKLhWWp25TjqEMBg6FEsQc2PjuZuSG1
	IRZXAAXuLZrrWiHC8WyRFbTfDanQWdncnCo5vFEa+5jBNYVGwmpWCxl3SAkV3+r2El/s
	956a39Vt3Fs7r7WUFuLix2NUv81R6D7uf7u1hP0e6S4a85+u4vVpmzPKOfX1M74SEtYn
	xDroWv43s77Peda5iv07t+1RAfM2h/KWVrMhaHSZgL2pI9C2VNRWvxnDvcGXMT3UzMAc
	36hQ==
MIME-Version: 1.0
Received: by 10.180.14.193 with SMTP id r1mr17725245wic.19.1341244825762; Mon,
	02 Jul 2012 09:00:25 -0700 (PDT)
Received: by 10.180.94.194 with HTTP; Mon, 2 Jul 2012 09:00:25 -0700 (PDT)
Date: Mon, 2 Jul 2012 18:00:25 +0200
Message-ID: <CAGws1Tum5GZuXam-Cbo4tk3YBreetpvSy2LzcAUB4dV8BWqdKQ@mail.gmail.com>
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmKIcBrd0AEJnKwtp3vjMv4KpU1VZGqUfD7COZMIdcZyPxkCiVTndErqLq2Ok4i+w6EcRb3
Subject: How to use PRINC
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
X-List-Received-Date: Mon, 02 Jul 2012 16:00:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello @all,

now that I have found out that the variable "PRINC" stands for
"increment the PR-variable"
how do I use it?

Version 1, found here:
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-bbappend-files

PRINC = "1"

Version 2, found here:
http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#var-SRC_URI

PRINC := "${@int(PRINC) + 2}"

Cheers, Markus

