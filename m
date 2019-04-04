Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06BB9E00D25; Thu,  4 Apr 2019 15:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBCF9E00D20
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 15:23:09 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id h18so5152810wml.1
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 15:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=73VRWuctTL9PpdZcrt8vpMjq0hNPBkkhafvO85+cjc0=;
	b=Ny/W01zqLk6ui3oGiEMMsQ78uyT1RCCtfA6bqAco4O/OcKVt1Qy+Df1TGh20oZN2rs
	RzT/G+xjSD67P8pxxiy3moGO3iBeatm/q3XAcnm81bYzWJgaMLalZ1O8oPIsV2bR+MqQ
	YtzOsWXaGqu6Az1odD9TW3axhIyUJqq/+tqZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=73VRWuctTL9PpdZcrt8vpMjq0hNPBkkhafvO85+cjc0=;
	b=hgxzqs7qJFWWNr/9lo2ODxQZuJg1+ckza96eByqVh6Zvy5ZLgl0xdsinqL3RSoJGCH
	fZvZyD1fLWHp/OYYNVp/q4JbLQ7s0HCsTpy5PfqE++wM/AIW+q3wMtCcUZJCvfHWnmTT
	T7aJEP3HkKsGxxi9XMqfnB2CF7BDnlukQoWOd1AAlu6tzG0d5h/aIRn9QXpHzbjh+CnI
	YqbXr/Te5VcqAyW7yJk3BFtIlpdUOpxZgfUS3EwHtlJvE1SZrwfiiyyQB2gC94HZVITl
	IOaUHhwR+LNhEvY+2WBfDwA1tyI7RuKZGHnKkQzaMmLzSdkKqI5WBCoDC2qxrxJs/0ui
	2mdg==
X-Gm-Message-State: APjAAAVcIhQWUQvUgbPlbyPo8/Ul4esGcINs0RqBCeSvSjOC86KL7wK9
	04FZRxgiUwDvBh4tJt6EG5r0/w==
X-Google-Smtp-Source: APXvYqyn3cjB5fR8O1ojXSjmeV8YRjSV6qOHgxB9knYyyOU7iaNuTxpI6sA/xeIuk/cbmDqwydtbog==
X-Received: by 2002:a1c:1dc3:: with SMTP id d186mr5861966wmd.64.1554416588984; 
	Thu, 04 Apr 2019 15:23:08 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	v16sm37953240wro.48.2019.04.04.15.23.07
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 04 Apr 2019 15:23:08 -0700 (PDT)
Message-ID: <913d9791bc9c41137478e4d76ee6131f385ab4cc.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: akuster808 <akuster808@gmail.com>, "Jain, Sangeeta"
	<sangeeta.jain@intel.com>, Poky Build User
	<pokybuild@ubuntu1604-ty-1.yocto.io>,  "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>,  Yi Zhao <yi.zhao@windriver.com>
Date: Thu, 04 Apr 2019 23:23:06 +0100
In-Reply-To: <5f279a38-ec01-21b5-e683-a9bc3caa8235@gmail.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
	<dd9d4804a3b42d84b0dcac0d35e3d1a1a4f0146a.camel@linuxfoundation.org>
	<5f279a38-ec01-21b5-e683-a9bc3caa8235@gmail.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Thu, 04 Apr 2019 22:23:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-04-05 at 03:46 +0530, akuster808 wrote:
> 
> On 4/5/19 3:25 AM, richard.purdie@linuxfoundation.org wrote:
> > On Thu, 2019-04-04 at 02:19 +0000, Jain, Sangeeta wrote:
> > > Also, I don't see any ptest results for 2.6.2.rc3 on public
> > > autobuilder. Do you have any plans to run them and share the
> > > results
> > > on autobuilder?
> > These were run separately but will run as part of any new stable
> > release builds. The results are here:
> > 
> > https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/
> > https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/
> > 
> > (for 2.6.2 and 2.5.4)
> > 
> > I'll merge these into the main release output in due course.
> Did I miss something in order to create:
> https://autobuilder.yocto.io/pub/non-release/20190326-8/testresults/testresult-report.txt

Right now only a-quick or a-full builds get those.

You can get one with:

$ wget https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/testresults.json
$ resulttool report .

which gives:

==============================================================================================================
PTest Result Summary
==============================================================================================================
--------------------------------------------------------------------------------------------------------------
Recipe             | Passed      | Failed   | Skipped  | Time(s)   
--------------------------------------------------------------------------------------------------------------
acl                | 221         | 0        | 0        | -
attr               | 109         | 0        | 0        | -
bash               | 75          | 4        | 0        | -
bluez5             | 25          | 0        | 0        | -
busybox            | 528         | 15       | 45       | -
bzip2              | 6           | 0        | 0        | -
dbus-test          | 18          | 3        | 2        | -
diffstat           | 439         | 0        | 0        | -
diffutils          | 20          | 0        | 0        | -
e2fsprogs          | 315         | 6        | 27       | -
flex               | 114         | 0        | 0        | -
gawk               | 342         | 0        | 0        | -
gdbm               | 24          | 0        | 0        | -
gdk-pixbuf         | 20          | 0        | 0        | -
glib-2.0           | 259         | 3        | 0        | -
gstreamer1.0       | 101         | 3        | 0        | -
gzip               | 21          | 0        | 0        | -
libpcre            | 3           | 0        | 0        | -
libusb1            | 4           | 0        | 0        | -
libxml-parser-perl | 15          | 0        | 0        | -
libxml2            | 134         | 0        | 0        | -
lttng-tools        | 1087        | 0        | 0        | - T
lzo                | 39          | 6        | 0        | -
nettle             | 158         | 0        | 2        | -
openssh            | 832         | 72       | 367      | - T
openssl            | 0           | 0        | 0        | -
pango              | 12          | 0        | 0        | -
perl               | 2298        | 1        | 120      | -
python             | 5444        | 15       | 53       | -
python3            | 7466        | 0        | 198      | -
quilt              | 57          | 0        | 0        | -
sed                | 86          | 0        | 0        | -
slang              | 97          | 0        | 0        | -
strace             | 213         | 272      | 97       | - T
tcl                | 148         | 0        | 0        | -
util-linux         | 0           | 395      | 55       | -
--------------------------------------------------------------------------------------------------------------

and

$ wget https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/testresults.json
$ resulttool report .

which gives:

==============================================================================================================
PTest Result Summary
==============================================================================================================
--------------------------------------------------------------------------------------------------------------
Recipe             | Passed      | Failed   | Skipped  | Time(s)   
--------------------------------------------------------------------------------------------------------------
acl                | 221         | 0        | 0        | -
attr               | 109         | 0        | 0        | -
bash               | 75          | 4        | 0        | -
bluez5             | 7           | 0        | 0        | -
busybox            | 509         | 14       | 36       | -
bzip2              | 6           | 0        | 0        | -
dbus-test          | 18          | 3        | 2        | -
diffstat           | 439         | 0        | 0        | -
diffutils          | 20          | 0        | 0        | -
e2fsprogs          | 304         | 5        | 27       | -
flex               | 114         | 0        | 0        | -
gawk               | 342         | 0        | 0        | -
gdbm               | 19          | 0        | 0        | -
gdk-pixbuf         | 20          | 0        | 0        | -
glib-2             | 252         | 1        | 0        | -
gzip               | 21          | 0        | 0        | -
libevent           | 1           | 0        | 0        | -
libpcre            | 3           | 0        | 0        | -
libxml-parser-perl | 15          | 0        | 0        | -
libxml2            | 134         | 0        | 0        | -
lttng-tools        | 1087        | 0        | 0        | -
lzo                | 39          | 6        | 0        | -
nettle             | 158         | 0        | 2        | -
openssh            | 840         | 72       | 367      | -
openssl            | 54          | 0        | 0        | -
pango              | 12          | 0        | 0        | -
perl               | 2282        | 3        | 120      | -
python             | 8331        | 45       | 69       | -
quilt              | 57          | 0        | 0        | -
sed                | 86          | 0        | 0        | -
slang              | 97          | 0        | 0        | -
strace             | 160         | 233      | 80       | -
tcl                | 148         | 0        | 0        | -
util-linux         | 0           | 389      | 52       | -
--------------------------------------------------------------------------------------------------------------

Knowing what I do about master, there is the same image  space issue
here triggered in the strace ptest by the looks of it which then breaks
other tests like util-linux.

Cheers,

Richard







