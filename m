Return-Path: <andreas@galauner.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B79CE00B6C; Sun,  8 Jun 2014 19:28:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from server.galauner.de (server.galauner.de [144.76.20.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 039B3E00A44
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 19:28:35 -0700 (PDT)
Received: from [192.168.178.29] (ip-88-153-108-136.unitymediagroup.de
	[88.153.108.136])
	by server.galauner.de (Postfix) with ESMTPSA id D5E4640050;
	Mon,  9 Jun 2014 04:28:34 +0200 (CEST)
Message-ID: <53951BD2.1090205@galauner.de>
Date: Mon, 09 Jun 2014 04:28:34 +0200
From: Andreas Galauner <andreas@galauner.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>
References: <5393FD24.6090807@galauner.de>
	<CAMCfZKEskKHED-Z2PQJRv2tDFw5KHFU5izAtKAaZ6xwQ8e9HCg@mail.gmail.com>
In-Reply-To: <CAMCfZKEskKHED-Z2PQJRv2tDFw5KHFU5izAtKAaZ6xwQ8e9HCg@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python3-distribute-native build fails in daisy
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
X-List-Received-Date: Mon, 09 Jun 2014 02:28:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/06/14 11:45, Diego Sueiro wrote:
> I'm getting the same problem for python3-distribute. Take a look bug
> #6373 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=6373>.
> Try to do a "bitbake python3-native -fccompile ; bitbake python3-native
> -f" and see if you can go further than me.

That worked, thanks!
It's at least a workaround.

- Andy


