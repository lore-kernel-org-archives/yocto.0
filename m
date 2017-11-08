Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2133E00D4D; Wed,  8 Nov 2017 09:06:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E79C2E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 09:06:18 -0800 (PST)
Received: by mail-oi0-f54.google.com with SMTP id b189so1121339oia.5
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 09:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=+HmvgwzjzbI5Oq6ISnZHaWpSzrgkaVG7H610RtelQu4=;
	b=q0vLRtuZz0mMnk5dKbqmWep2i4pdq3QFcjiwn5XZgNeH3Xi3AlteImT/xazJA5jdVO
	ZRVka+26JEjt6h1JmJqJ40pq6MmsZnXGJlCzbeiF/GIVlPPE51HGc/+dUzr3rnWC3TrZ
	HsIwq9yQ+P+6686w23ezfP86hBwXjduvoN/twvdn61zDU/qJLdLJMJiw+uU8Ieehh4Dh
	G6OSN3cwAgNz/oCjolQBMssJlbpT2gnBF9lHEk8C3BWcP572VgLalfdhowcV5FnTihOk
	beRwB6BPPYA9+FQMMNyIiWnHPRpyaZWyhhlJjBuszF44jfRzg8T2b4CmBFZQDAfFZ19D
	ct0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+HmvgwzjzbI5Oq6ISnZHaWpSzrgkaVG7H610RtelQu4=;
	b=QVMJ6QqjFcyKMf9gWit/eLWNDlkIgrgG8T3GP3TFLRjzI6RbQMGlhoUyrUxYJmJt2A
	/mAizEqo5+flprRoEk39bgZXIn/7kY0RItbuyPvmdTr6zKauYZ7DfvTuwI0X9DcdolCK
	iOmMtP395Ca67itUdbmPzAhr04cyT7nmz2k/uX6J8fvjK7CwN8ewMuwMhFJfOGnL40q/
	qftmZY0vpxnlec7X/DiONmkgJTXqueNWG3+LQXhJkeR/N3+io7NUfds77lhiNbozGbnd
	C1rqBuJamZfQnKp+5K121sGsFNUNoNAxLb5HKWl+Vor+R1UzVRTBeZCznnxBvwgH/ZEb
	x2EA==
X-Gm-Message-State: AJaThX555ZDIbCnedQiansFAbbwhJuWfyZoodK7P2OcCMfCvpuneiOOy
	YIWabx4SC1GHujwLN8MvvpdOq1wJAqpP8hofpboemw==
X-Google-Smtp-Source: ABhQp+QsbTZcOKZNhpSd3p0obOGd+4//IltuL7hOSjdckBwtcII7KUE/HhBNCfiBnzDLSUM1ALEtugl9jFka77nJFXA=
X-Received: by 10.202.207.193 with SMTP id f184mr653686oig.65.1510160777794;
	Wed, 08 Nov 2017 09:06:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 09:06:17 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 12:06:17 -0500
Message-ID: <CAE0QtjOyjit90GBrK4i1nCNP_et=GHH=xdnurw72MS+JLfOyDg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Yocto problem for Ryzen-7 cpu
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
X-List-Received-Date: Wed, 08 Nov 2017 17:06:21 -0000
Content-Type: multipart/alternative; boundary="001a113df35ab6d818055d7bb4ae"

--001a113df35ab6d818055d7bb4ae
Content-Type: text/plain; charset="UTF-8"

(my Gmail does not accept new message for same subject? so I open a new
thread)

So bad: I do use Ryzen-7.
will Ubuntu-17 or latest Debian fix the problem?

--001a113df35ab6d818055d7bb4ae
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div><div>(my Gmail does not accept new message for same subject? so I open a new thread)<br><br></div>So bad: I do use Ryzen-7.<br></div>will Ubuntu-17 or latest Debian fix the problem?<br><br><br><br></div>

--001a113df35ab6d818055d7bb4ae--
