Return-Path: <alfonsolimaastor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A94FE00C40; Thu,  7 Jul 2016 00:41:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alfonsolimaastor[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AA1CE00C1D
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 00:41:23 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id l202so13343693ioe.3
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2016 00:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=n1bqkcxboduP8JlrXissLLIWaDwMKK3MEGSLoPIz0eQ=;
	b=rw8KqEWlrKmAg6eJvlHmYIZIGdJl4LWRkSAfodghprJIbOtAbSnb2lOXjnIf+7rv43
	u9kVFgwOLY15kmndiw6fz91bohm8lu7M7pdD9mx0bgezudbR2uvVvDQdNTsik9Mm76Jv
	9xAYIinV3k5d1PYfXwO9r0wr5eCnS3j3yEWKr1j78mVAHZs4X2B8uypgAFYHSu2kZUUG
	KHh75LoOBVVE86LwNQFoCOxbluF9HWmC93ElSKAxZ33RFfUz7mJ8aypWEB0lKztXlTG0
	SwQ/dMQ0K1fctK6s2MUVuzyhJW3aP9u+2PZ558MsVVk8nY/PCon7LSjfWho7bGAVb+5p
	GLIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=n1bqkcxboduP8JlrXissLLIWaDwMKK3MEGSLoPIz0eQ=;
	b=LSNDlF6Oyf0XNhY+aWbOcQusEz77HZB+dkqSW45GkJewEVv48FEGf+mzLAfzVPNpA6
	V4AcsYtd7mN3oA6AVUoW89d3AKBVz3BgPRZPnLvs4nSW0JqN2Y+P/IwNGKou1us7To4C
	5fOlYdct4mUhdAyaD3ysc8NqomL/WQyzF+hZOC8HJ6q0O4iA0E9C1N7cviOJX8/nNErE
	aTqMgsXE4/WSFwuCsimfjs+Vz65Yaai7RKGyYiBY6l5lRy8ZLn8ISIQscP8z9PH2j9P+
	GfCGOJ4/fNjz0iUt3y1vC7pjkz3JtkxVt5HJ0pWzUzomTjeyE5PCegPKiwqCBDFAWPIr
	ESbQ==
X-Gm-Message-State: ALyK8tJWho3+5P1sxMi4RgbnL5lDLeGTwDRDOH0FS5jqpaP5mbzDhgWLdA81fsdJWzQOhc9vo4HN65niFj9piQ==
X-Received: by 10.107.33.193 with SMTP id h184mr1260317ioh.10.1467877282786;
	Thu, 07 Jul 2016 00:41:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.174.92 with HTTP; Thu, 7 Jul 2016 00:40:43 -0700 (PDT)
From: Alfonso Lima Astor <alfonsolimaastor@gmail.com>
Date: Thu, 7 Jul 2016 08:40:43 +0100
Message-ID: <CAFBcLwK0iSdL_oBNJV+PTdgBFR=sGuVWjXXeaxtvVs7-N0Z8Kg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Confused on how to use native sdk correctly
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
X-List-Received-Date: Thu, 07 Jul 2016 07:41:25 -0000
Content-Type: text/plain; charset=UTF-8

Hello all,

I am working on a project that creates applications for host and target
architectures. The target SDK works fine, but I am struggling to understand
how to use the host SDK. In my project, we have tools using QT libraries,
OpenCV libraries and headers and libraries from other packages.

How am I supposed to use these libraries for the host build? just installing
them on my computer or adding them to the native sdk? What people do for other
projects?

Having a look to the SDK environment setup script, it seems to me that
the native
SDK is meant to hold tools to support the cross compilation but not supposed to
be used for the native build. Is this correct?

Thank you

