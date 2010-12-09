Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDA4A4C81081
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 14:01:14 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9K1C1x012802;
	Thu, 9 Dec 2010 20:01:12 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12429-06; Thu,  9 Dec 2010 20:01:07 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9K15kW012796
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 20:01:05 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Ke, Liping" <liping.ke@intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D3065973312DBD16@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DBD16@shsmsx501.ccr.corp.intel.com>
Date: Thu, 09 Dec 2010 20:00:53 +0000
Message-ID: <1291924853.1554.933.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: PULL] ADT installer script implementation, Liping Ke
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
X-List-Received-Date: Thu, 09 Dec 2010 20:01:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Liping, Jessica and team,

On Thu, 2010-12-09 at 17:28 +0800, Ke, Liping wrote:
> Pull URL: git://git.pokylinux.org/poky-contrib.git
> Branch: lke/adt_installer_initial
> Browse: http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=lke/adt_installer_initial&id=a06769b01d7b18894ad413daa8159f74c90f6c0f


I had a quick look over this and have a few comments. I'm in critical
review mode and don't have a lot of time so please don't take any of
this feedback the wrong way, I just want to give you honest first hand
first time user perception.

The first thing I read was in the patch was:

+# following are for testing in my machine. it will be moved when
+# going into code repository
+export http_proxy=""
+export HTTP_PROXY=""
+export HTTPS_PROXY=""
+export https_proxy=""
+export ftp_proxy=""
+export FTP_PROXY=""

which it evidently wasn't! ;-)

The rest of that file suggests it probably shouldn't be there actually?

I then decided to try it.

cd /
root@rex:/# /rphome/poky/scripts/adt-installer/yocto_installer
/rphome/poky/scripts/adt-installer/yocto_installer: line 207: .config: No such file or directory
[snip lots of similar errors]

So I'd suggest it looks at the location of the main script and then uses
this to find its config files.

It then found the presetup .config file and took those values as the
defaults. This was not obvious to me, it should perhaps really state
where its getting that config from.

I removed the .config file. That didn't help me so I removed
yocto_installer.conf. This didn't help me much either.

Now, reading the script I suddenly realise the user doesn't get prompted
to be able to change the values, you can only set these in the config
files.

I tried hitting Y for fun despite knowing it would crash and burn. Those
error messages were good so kudos there :)

I think it would make most sense for the user to be prompted for unset
values with "enter" selecting a sane set of defaults.

So in summary, I think the right pieces are there in terms of
configuration but the user interaction needs a lot more thought. I
didn't try an actual installation as I don't have a local setup to allow
it.

For the next review, I'd like an opkg repo to be available somewhere to
test against and for you to provide an installer tarball as an end user
would receive for people to evaluate.

Cheers,

Richard



