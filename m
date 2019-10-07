Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96161E00C74; Mon,  7 Oct 2019 07:54:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA5DAE00AD5
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2019 07:54:17 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x97EsClU004156
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 7 Oct 2019 09:54:13 -0500
To: "Oriya, Raxesh" <Raxeshkumar.Oriya@ncr.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CY4PR15MB18783DA507FC9EBF565795B5FD9D0@CY4PR15MB1878.namprd15.prod.outlook.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <32b01f41-be72-d9b3-61d6-d3cd843f690a@kernel.crashing.org>
Date: Mon, 7 Oct 2019 09:54:12 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CY4PR15MB18783DA507FC9EBF565795B5FD9D0@CY4PR15MB1878.namprd15.prod.outlook.com>
Cc: "C M, Kiran Reddy" <kiran.reddy@ncr.com>, "Mohammad,
	Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
Subject: Re: meta-selinux warrior support
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
X-List-Received-Date: Mon, 07 Oct 2019 14:54:19 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

I thought this issue was already fixed:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?h=warrior&id=bb0c9c3abcb935e4b362eb57985e1ee7fec0bfe0

This patch is what specifically adds the enabled/disabled that the system is
saying (in the logs quoted below) is invalid.

Can you try changing these to 'true' and 'false' instead?

In the file: classes/meson-enable-selinux.bbclass

--Mark

On 10/1/19 1:39 AM, Oriya, Raxesh wrote:
> Hi,
> 
>  
> 
> I am getting the below error when I am trying to integrate 'meta-selinux' into
> our yocto solution. This error also happens when I just build
> 'core-image-selinux' by including the required layers in warrior branch. Can
> anyone provide a fix for this..
> 
>  
> 
> local.conf contains the following lines:
> 
> ---------
> 
> DISTRO_FEATURES_append = " acl xattr pam selinux"
> 
> PREFERRED_PROVIDER_virtual/refpolicy ?= "refpolicy-mls"
> 
> ---------
> 
>  
> 
> ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: meson failed
> 
> ERROR: glib-2.0-native-1_2.58.3-r0 do_configure: Function failed: do_configure
> (log file is located at
> /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2.58.3-r0/temp/log.do_configure.34545)
> 
> ERROR: Logfile of failure stored in:
> /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2.58.3-r0/temp/log.do_configure.34545
> 
> Log data follows:
> 
> | DEBUG: Executing shell function do_configure
> 
> | NOTE: Executing meson -Ddtrace=false -Dfam=false -Dsystemtap=false
> -Dselinux=false -Dlibmount=true -Dman=false -Dselinux=disabled
> -Dinternal_pcre=false -Dinstalled_tests=false...
> 
> | The Meson build system
> 
> | Version: 0.49.2
> 
> | Source dir:
> 
> | /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2
> 
> | .58.3-r0/glib-2.58.3 Build dir:
> 
> | /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2
> 
> | .58.3-r0/build
> 
> | Build type: native build
> 
> |
> 
> | meson.build:1:0: ERROR:  Value disabled is not boolean (true or false).
> 
> |
> 
> | A full log can be found at
> 
> | /home/panther2/warrior/build/tmp/work/x86_64-linux/glib-2.0-native/1_2
> 
> | .58.3-r0/build/meson-logs/meson-log.txt
> 
> | ERROR: meson failed
> 
>  
> 
> Thanks,
> 
> Raxesh
> 
>  
> 
> 

