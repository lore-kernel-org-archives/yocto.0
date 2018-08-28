Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 136ECE0043F; Tue, 28 Aug 2018 05:34:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97657E003C1
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 05:34:01 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id r69-v6so2498255oie.3
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 05:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AyadeBEDeQhjDcVe8S5NsX2yvW2/JHemo/gzTeDoeKU=;
	b=LlwbGT+YaySzK0e4qVSU+LQnbhm6XBkM2pbvFzy4On+tXqMAc1xFuE3iZhtca9Hzh8
	PuGIcm94Zynt1lgD9p3jcFpeH0yF+Q1TDApNhNZjVIZbh8N83+5y2J+5/4UJWpvdbPgw
	uw6rof9Zp9OzlQx2bYOrvzSFCf/qJlVZk5vzT9KqXdTzIB6zK06F43IqWUnAiZelQ0Gg
	/HCW1TGDeUtPz3B4D7+u/e7ANLZEP37Xb2Zuqlewv1ToKgxFWKfIxjjRlDjQzD40VQZG
	S8q6lMyHNCd2yhwOwlbrrgnzN7a0lqtjPHr9Av0NFM8q3wW4vB9l5arvBzWNckkKXB3T
	ltKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AyadeBEDeQhjDcVe8S5NsX2yvW2/JHemo/gzTeDoeKU=;
	b=PT9MdFITEzyfgtwZ9VyVU1hWVeXcLKcfTS5X2FbOf0anh0sn13Wo10rU/mPpebpkaf
	6qI9h4xWb2KpWrs3idB/PO802JxsEbWfyq2n1MHDjKP0EC9871/9HATX1YDEo8qjdpM8
	q4XiBidFcMYndY1gw/XFimzafguY+vIMebkqaRXOiLyVAG3YItCG2Dh3jP6wRvSsHlja
	9AItUa27S3cibfv3YsD36p1h053TlHKgMdK2WQTJq+alJAk/COWh6hExdM+q7Pybsafo
	Co1jtKilb1Jk8W2tiCttOK5oI+xi/vcscICdE4eZXjBTdpsBS2j+8uMql8hLcEIUwmWN
	3pAg==
X-Gm-Message-State: APzg51CLuP7Bea7VjRZ30WwaGwsPwDPsR+RsoO3EIlmEh926WTZxa7fn
	l1S8RcQGeic8hJLY6okQP47HT41Rs7fruzsCW3QunQ==
X-Google-Smtp-Source: ANB0VdbRL0q0IzkZEZ17eE19zJMdHJU45r3TUqI0J0lxaKOnXWjpkjXtldOwK8TmFEdY+fjSB4E3FWg5VO8qZ4Rds9E=
X-Received: by 2002:aca:6cd5:: with SMTP id
	h204-v6mr1126554oic.140.1535459640949; 
	Tue, 28 Aug 2018 05:34:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6195:0:0:0:0:0 with HTTP; Tue, 28 Aug 2018 05:33:40
	-0700 (PDT)
In-Reply-To: <CAO7XzZZTV26E-Ek+YbTG-MuNpFU9KWOKMATyk_4iCnX7236j9g@mail.gmail.com>
References: <CAO7XzZZTV26E-Ek+YbTG-MuNpFU9KWOKMATyk_4iCnX7236j9g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Aug 2018 13:33:40 +0100
Message-ID: <CAJTo0LZjBZE7JoMnxPPmA9ZtgKZqF=3tHchMz29XGt5CA2n12Q@mail.gmail.com>
To: bernardo araujo rodrigues <bernardoaraujor@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: PyBuild based OpenEmbedded/BitBake recipe
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
X-List-Received-Date: Tue, 28 Aug 2018 12:34:02 -0000
Content-Type: text/plain; charset="UTF-8"

On 20 August 2018 at 01:33, bernardo araujo rodrigues
<bernardoaraujor@gmail.com> wrote:
> Looking at PhantomJS' github repo (https://github.com/ariya/phantomjs), I
> realized it's a PyBuild based project. However, I couldn't find any BitBake
> class like the setuptools or pypi that would support the build.py script.

That build.py is entirely hand-coded and doesn't use *any* standard
systems, you'll need to call it yourself.  This is trivial: python3
build.py.  Then you get to discover all the corner cases that people
don't think about when they hand-code build scripts...

Ross

