Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A1BE00BA1; Thu, 21 Nov 2019 08:40:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D0DEE003E1
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 08:40:43 -0800 (PST)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xALGeafK002395
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Thu, 21 Nov 2019 10:40:37 -0600
To: Mauro Ziliani <mauro@faresoftware.it>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <d588db5e-aec1-d40a-c503-ee0735b334ea@faresoftware.it>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <f6dae2f5-1baa-2133-6f49-334b937f92b7@kernel.crashing.org>
Date: Thu, 21 Nov 2019 10:40:36 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <d588db5e-aec1-d40a-c503-ee0735b334ea@faresoftware.it>
Subject: Re: populate_sdk with my image
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
X-List-Received-Date: Thu, 21 Nov 2019 16:40:44 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Language: en-US
Content-Transfer-Encoding: 8bit

populate_sdk uses the same configuration as the regular image, as well as adding
"dev-pkgs dbg-pkgs src-pkgs" and optionally doc-pkgs.

See:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/populate_sdk_base.bbclass

Lines 3-11, and 22.

If dev-pkgs/src-pkgs isn't inclyding your Qt/Qml development components, then
they may not be packaged properly.

The way dev-pkgs works (like 5) is by taking a list of each package installed in
the system and then trying to add '-dev' to it, and then install that.  (Roughly)

--Mark


On 11/21/19 10:31 AM, Mauro Ziliani wrote:
> Hi all.
> 
> I have a recipe for my image with depends from Qt/Qml recipes
> 
> When I do
> 
> bitbake -c populate_sdk myimage.bb
> 
> 
> the sdk doesn't contains the dev version of the Qt/Qml libraries installed in
> the final image
> 
> 
> I managing the bitbake variables  TOOLCHAIN_TARGET_TASK and TOOLCHAIN_HOST_TASK
> adding manually the dependecies.
> 
> 
> There is an automatic way to do that?
> 
> 
> M
> 
> 

