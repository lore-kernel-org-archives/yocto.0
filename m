Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CADF0E00905; Mon, 12 Dec 2016 14:19:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 30A72E005B9
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 14:19:13 -0800 (PST)
Received: (qmail 14660 invoked by uid 1003); 12 Dec 2016 22:19:13 -0000
Received: from unknown (HELO ?10.16.32.193?)
	(philip@opensdr.com@207.114.172.147)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	12 Dec 2016 22:19:13 -0000
To: "Bystricky, Juro" <juro.bystricky@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
From: Philip Balister <philip@balister.org>
Message-ID: <a278001c-6944-42c4-0762-30d4931a2016@balister.org>
Date: Mon, 12 Dec 2016 14:19:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
Subject: Re: meta-zephyr layer
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
X-List-Received-Date: Mon, 12 Dec 2016 22:19:15 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Does that work without poky?

Philip

On 12/12/2016 02:15 PM, Bystricky, Juro wrote:
> There is interest in the community to support building Zephyr images
> ( https://www.zephyrproject.org/ )in Yocto via bitbake recipes. 
> AFAIK the only way thus far to build Zephyr images is based on command 
> line/Kconfig, similar to building Linux kernel images. 
> 
> Building of Zephyr images in Yocto can now be done fairly unobtrusively 
> via a new layer "meta-zephyr" and specifying a new distro in local.conf:
> DISTRO="zephyr"
> 
> The repository for the meta-zephyr is here: 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=juro/meta-zephyr.
> 
> The new meta-zephyr layer contains several recipes to build (and run
> in QEMUs) various Zephyr tests. There is also a sample recipe to build 
> Zephyr sample "philosophers" with instructions how to run it in QEMU.
> 
> This is the first kick at the can.
> At present, only x86 and ARM CortexM3 toolchains are supported, with
> more coming eventually. (Zephyr also supports BSPs for ARC, Nios2, IAMCU,
> and Xtensa and RISC-V coming in the next release)
> 
> The new meta-zephyr is work based on previous original work by 
> Randy Witt and Richard Purdie, so it is actually a second kick at the can.
> 
> This is a work in progress, any feedback is appreciated.
> 
> Juro
> 
> 

