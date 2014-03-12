Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 22EF8E00A89
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 10:37:23 -0700 (PDT)
Received: (qmail 27139 invoked by uid 1003); 12 Mar 2014 17:37:23 -0000
Received: from unknown (HELO ?192.168.10.98?)
	(philip@opensdr.com@109.193.15.210)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	12 Mar 2014 17:37:22 -0000
Message-ID: <53209B50.4050903@balister.org>
Date: Wed, 12 Mar 2014 18:37:20 +0100
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>
	<53207D25.2040309@mlbassoc.com>
In-Reply-To: <53207D25.2040309@mlbassoc.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: Building on target
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
X-List-Received-Date: Wed, 12 Mar 2014 17:37:27 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 03/12/2014 04:28 PM, Gary Thomas wrote:
> On 2014-03-12 09:15, Rick Bianchi wrote:
>>
>> I have the gumstix-console-image with the added packages below. When I compile on the target is take a very long time for it to complete, over 24 hours. I have compiled the same
>> code on the same target, but running Linaro image, and it only takes a few minutes. Is there another recipe that I need to add to the build to speed up compiling?
> 
> Doubtful.  The reason your build on the target takes so long is merely
> one of horsepower - that little ARM processor just doesn't have it, especially
> if you are comparing it to a typical desktop environment.

Gary, this doesn't explain why it goes quickly with the Linaro image though.

Philip

> 
>> EXTRA_IMAGE_FEATURES += "dev-pkgs"
>> IMAGE_INSTALL_append =" autoconf"
>> IMAGE_INSTALL_append =" autofs"
>> IMAGE_INSTALL_append =" automake"
>> IMAGE_INSTALL_append =" ccache”
>> IMAGE_INSTALL_append =" chkconfig"
>> IMAGE_INSTALL_append =" dbus-glib"
>> IMAGE_INSTALL_append =" gcc"
>> IMAGE_INSTALL_append =" glib-2.0"
>> IMAGE_INSTALL_append =" glib-networking"
>> IMAGE_INSTALL_append =" glibmm"
>> IMAGE_INSTALL_append =" packagegroup-core-buildessential"
>> IMAGE_INSTALL_append =" pciutils"
>> IMAGE_INSTALL_append =" pkgconfig”
>> IMAGE_INSTALL_append =" python-scons"
>> IMAGE_INSTALL_append =" systemd-compat-units”
>> IMAGE_INSTALL_append =" sysfsutils"
>> IMAGE_INSTALL_append =" tcp-wrappers"
>> IMAGE_INSTALL_append =" usbutils"
>> IMAGE_INSTALL_append =" util-macros"
>>
>>
> 

