Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D17E8E00A5B; Fri, 24 Jul 2015 17:20:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CAF2E00A3C
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 17:20:11 -0700 (PDT)
Received: by pabkd10 with SMTP id kd10so21501648pab.2
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 17:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=AbUO/5OEvEOfbtUxUEz1pSRW/SMNtv+rYsKdQ6DqYtQ=;
	b=O3jxAABdntpTULQEng7TF0s0HrdpN8BUpKXANEEnxqxwq+V9hGQE/+SYc08a9EBrM4
	MRIpqPSXeEgrH5tDEwOyAiuBIdUOLdubjaroLAqhVzubTsLw1PbYFE9/NMpORZ8nJeVn
	CWbcFtfuS9XrjjwMMuRNckSIQeyxpKcaL2wUlUEzUeD/J1JrLsFI9jAQpfvuGmqV9NqE
	1bgTDCznNjYaJ0ZOi0sRV5ZarOY9EtYuNJZUsYSBajgub4xPxdik0BqDi1kfUWNwS+vw
	c6Odwy+XzT95O3AxcYXvWazpuCbKlddD4ZhmYi6mlWW8Frb+qwL0OBWMnA5ZaXORIj3L
	VwDA==
X-Received: by 10.66.121.163 with SMTP id ll3mr37829320pab.100.1437783610985; 
	Fri, 24 Jul 2015 17:20:10 -0700 (PDT)
Received: from haswell ([2601:646:8601:4580:baca:3aff:fe80:aa8f])
	by smtp.gmail.com with ESMTPSA id
	f1sm16605131pdp.39.2015.07.24.17.20.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Jul 2015 17:20:10 -0700 (PDT)
Date: Fri, 24 Jul 2015 17:27:42 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Adam Sherman <adam@alembicinst.com>
Message-ID: <20150725002742.GC14383@haswell>
References: <3070750398d841b6866b97073c1bbeaa@nivm320.nibe.se>
	<loom.20150724T210947-218@post.gmane.org>
MIME-Version: 1.0
In-Reply-To: <loom.20150724T210947-218@post.gmane.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Sftp deploy hangs when using dropbear and yocto fido.
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
X-List-Received-Date: Sat, 25 Jul 2015 00:20:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On 15-07-24 19:20:22, Adam Sherman wrote:
> Måns Andersson <Mans.Andersson@...> writes:
> 
> > 
> > Does anyone know about a problem with dropbear and openssh-sftp-server on
> Yocto Fido?
> > 
> > After upgrading my build from Dora to Fido the deployment of builds from
> QtCreator (3.2.2) to my qemuarm
> > build stopped working. It just hangs waiting as if it's working, i.e. no
> error message. I've switched
> > toolchains and emulator images from my Dora and Fido builds back and forth
> and the only common denominator
> > when it doesn't work is when using the Fido qemuarm build. Regular SSH
> connections and manual sftp
> > transfers (i.e. not initiated by Qt Creator) works, which just makes it
> even harder to debug.
> > 
> > Thanks in advance.
> > // Måns
> > 
> 
> Just to let you know, I have the same behavior with QtCreator (3.4.2) /
> trying to deploy on the Armadeus APF27 embedded Linux Arm Platform 
> (Buildroot 2015.02 / Dropbear / openssh sftp server).
> 
> Similarly, stand-alone sftp transfers outside of QtCreator work just fine.

openssh 6.9 has changed some default ciphers and I see that it may not
work directly with older openssh servers, I wonder if you have same
problem with dropbear. Whats the openssh client/server versions involved on your host ?

> 
> Adam Sherman
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

