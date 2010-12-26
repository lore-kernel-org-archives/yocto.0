Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7466D4C80FFE
	for <yocto@yoctoproject.org>; Sun, 26 Dec 2010 16:07:13 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Dec 2010 14:07:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,232,1291622400"; d="scan'208";a="587349911"
Received: from unknown (HELO [10.255.13.220]) ([10.255.13.220])
	by orsmga002.jf.intel.com with ESMTP; 26 Dec 2010 14:07:12 -0800
Message-ID: <4D17BC90.5050005@intel.com>
Date: Sun, 26 Dec 2010 14:07:12 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6E7@orsmsx504.amr.corp.intel.com>,
	<4D142F80.3090308@intel.com>
	<DC74E0187B44084E9AD28300B75DFE300557D6EA@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE300557D6EA@orsmsx504.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder upgrade to Buildbot 0.8.3
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
X-List-Received-Date: Sun, 26 Dec 2010 22:07:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/26/2010 09:36 AM, Flanagan, Elizabeth wrote:
>
> ________________________________________
> From: Wold, Saul
> Sent: Thursday, December 23, 2010 9:28 PM
> To: Flanagan, Elizabeth
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Autobuilder upgrade to Buildbot 0.8.3
>
>> Ok, so what is the User and Password for?  I don't really see any
>> explanation for them.
>
> The username and password is for securing the build kick off process. It is what you enter when you want to manually kick off the build from that screen in the web user interface.
>
Thanks, this was not clear from the README or INSTALL file.

Also, there seems to be some package pre-requistites that I am still 
trying to figure out.  I did not have python-twisted package installed 
and that took a bit to figure out, but I am still getting fatwistd 
--no_save -y buildbot.tac
/usr/lib64/python2.6/site-packages/twisted/persisted/sob.py:12: 
DeprecationWarning: the md5 module is deprecated; use hashlib instead
   import os, md5, sys
Traceback (most recent call last):
   File "/usr/lib64/python2.6/site-packages/twisted/application/app.py", 
line 694, in run
     runApp(config)
   File "/usr/lib64/python2.6/site-packages/twisted/scripts/twistd.py", 
line 23, in runApp
     _SomeApplicationRunner(config).run()
   File "/usr/lib64/python2.6/site-packages/twisted/application/app.py", 
line 411, in run
     self.application = self.createOrGetApplication()
   File "/usr/lib64/python2.6/site-packages/twisted/application/app.py", 
line 494, in createOrGetApplication
     application = getApplication(self.config, passphrase)
--- <exception caught here> ---
   File "/usr/lib64/python2.6/site-packages/twisted/application/app.py", 
line 505, in getApplication
     application = service.loadApplication(filename, style, passphrase)
   File 
"/usr/lib64/python2.6/site-packages/twisted/application/service.py", 
line 390, in loadApplication
     application = sob.loadValueFromFile(filename, 'application', 
passphrase)
   File "/usr/lib64/python2.6/site-packages/twisted/persisted/sob.py", 
line 207, in loadValueFromFile
     fileObj = open(filename, mode)
exceptions.IOError: [Errno 2] No such file or directory: 'buildbot.tac'

Failed to load application: [Errno 2] No such file or directory: 
'buildbot.tac'

make: *** [start] Error 1
ilures:


>> I am trying different options for setting locations and seem to have run
>> into trouble.  It would be nice to have a general option to just sent
>> bbHome to something other than home directory to move everything to a
>> different drive.
>
> There is, kind of. I see your point though. I'll put this in the next revision of this.
>
> ./scripts/poky-setup-autobuilder --masterdir=/path/to/directory/poky-master --slavedir=/path/to/directory/poky-slave --outputdir.=/path/to/directory/poky-slave/output --controldir=/path/to/directory/poky-autobuilder --pstagedir=/path/to/directory/poky-slave/pstaging both
>
> The above should end up being
>
> ./scripts/poky-setup-autobuilder --installdir=/path/to/installdir both
>
Thanks for adding this to your list.

Sau!

>> Sau!
>
> -b


