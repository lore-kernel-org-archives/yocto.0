Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33FC5E00546; Sun, 16 Apr 2017 23:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B931BE003E1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 23:40:05 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 5E692260744
Message-ID: <1492411200.15749.3.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 08:40:00 +0200
In-Reply-To: <CAAHuHfxQbRCgC6fRJo1R=oM11duYh+zzWTZ=J-NTUQ7W_yhCzg@mail.gmail.com>
References: <CAAHuHfxQbRCgC6fRJo1R=oM11duYh+zzWTZ=J-NTUQ7W_yhCzg@mail.gmail.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Static Lib build.
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
X-List-Received-Date: Mon, 17 Apr 2017 06:40:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2017-04-15 at 17:24 +0300, Life Life wrote:
> Hello,
> 
> I'm try to build static library for SDK.
> 
> Update the build/local.conf file with the following information
> 
> SDKIMAGE_FEATURES = "staticdev-pkgs dev-pkgs"
> 
> INHERIT += "buildhistory"
> BUILDHISTORY_COMMIT = "0"
>  BUILDHISTORY_FEATURES = "sdk"
> 
> But cannot create static library for SDK.

Can you provide command and logs?

> 
> 
> Thanks.

