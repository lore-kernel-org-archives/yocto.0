Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD2F2E010B9; Tue,  9 Aug 2016 06:32:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBF20E00ECD;
	Tue,  9 Aug 2016 06:32:36 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id f6so14037742ith.0;
	Tue, 09 Aug 2016 06:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=IU8DVJnaq6kk8lblLqDgOGronyOKMXkHrumTLM8JtXU=;
	b=U/EjhEo6M69LY8V1MecbP6AoYShAkWI/5edJJ3xT2gitJQAtgJ9/rtQnQzn8PM7Dyc
	CT5qOhovKU13J79CemYAYtjE4KU6djwN25PlBc8pL5unEVVXiuyoG7XlAg6tBwONXZRo
	4CizeuwD0tmcTOkotOASSeVoYtSULGyzy6LLMsSPJnE7yvexrhwFOrG3Zh821NB2ZmpM
	LZYmxayNR1Li8C1inUAT8glZh6tSX7Cr59Lpdi6xRg5GMZMBvyjlUXgXrqvb1p+4UC6g
	hd3uLaCiMwRNjVxNKzVfQoYvHmnnfwXqTVKjvg8qX+AP1r9RwQ/240z5JCtCUZ610XUD
	jWpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IU8DVJnaq6kk8lblLqDgOGronyOKMXkHrumTLM8JtXU=;
	b=YiGvddlZr0mbJLQYH35+bwENs2Up3SFRPPUb+Ft0hCVAk7m3M5kvM33LDuE5hfD7l0
	HBP6ScELMhz4JRml1FtAyikokGeXjftnanjmD6CkaShwVVsTqxM+Dn9vY92awIFs3lKm
	ggUqUsl33TfY9J/lGL49bl6uXl0qSrtbw1YmdVNgaPmazb/dqzrZSDuV4z0NDOK6I5/Q
	WC5iKN5E/AXOUdCUZYMEgcqCMR0CRc99U0XqLY94HEzp5v+hT4qZD+/f+zZiPxLowgui
	qj+DNJr12LeSSXT8NT4yIzOZEoIvB9sRvbJrBS0UZZ/w0FpAXZvACTgpEZuKDWXchgxs
	l96g==
X-Gm-Message-State: AEkooutCYU5PPxBJ5NZ7u2XoWLXbAxYnBxXwDPFEypSuigOyFDq5bRWdtUgBZBJNx2wmq6M0gyHQ0Xy+XDjsLA==
X-Received: by 10.36.112.11 with SMTP id f11mr25378415itc.57.1470749556235;
	Tue, 09 Aug 2016 06:32:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.113.85 with HTTP; Tue, 9 Aug 2016 06:32:35 -0700 (PDT)
From: jags gediya <jags.gediya@gmail.com>
Date: Tue, 9 Aug 2016 19:02:35 +0530
Message-ID: <CAP3RZogR+2vLi6RZi+muT_R1V82KF7RcfAfYmRBC3cTJQ1XZsA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Subject: How to build yocto as a root user?
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
X-List-Received-Date: Tue, 09 Aug 2016 13:32:39 -0000
Content-Type: multipart/alternative; boundary=001a113f6ff2da63fa0539a3909e

--001a113f6ff2da63fa0539a3909e
Content-Type: text/plain; charset=UTF-8

I am facing issues while build yocto as root user on ubuntu 14.04.
How can i build as a root user?

--001a113f6ff2da63fa0539a3909e
Content-Type: text/html; charset=UTF-8

<div dir="ltr">I am facing issues while build yocto as root user on ubuntu 14.04.<div>How can i build as a root user?</div></div>

--001a113f6ff2da63fa0539a3909e--
