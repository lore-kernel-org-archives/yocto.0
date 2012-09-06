Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 773B9E013D2
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 07:01:57 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Sep 2012 07:01:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="142184571"
Received: from unknown (HELO helios.localnet) ([10.252.121.173])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Sep 2012 07:01:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Thu, 06 Sep 2012 15:01:54 +0100
Message-ID: <2240155.dFF0jJVt51@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A072B1@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A072B1@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: developing with devshell and effect of the bitbake.conf file
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
X-List-Received-Date: Thu, 06 Sep 2012 14:01:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 14 June 2012 15:46:51 Rifenbark, Scott M wrote:
> I want to throw this out for discussion.  I recently was looking at a
> section in the YP Reference manual
> (http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.h
> tml#platdev-appdev-devshell) where it talks about developing using devshell.
>  I asked Darren Hart if this was a valid development model and he says it
> is.  There is a part of the section though that talks about the
> bitbake.conf file.  That section in the conf file does not seem to exist
> anymore.  And, Darren (after some testing) doesn't see how what is in the
> bitbake.conf file affects development with devshell.  Any comments welcome.
> 
>
> On Wed, Jun 13, 2012 at 2:19 PM, Darren Hart wrote:
>> On 06/12/2012 11:34 AM, Scott Rifenbark wrote:
>> > Hi Darren,
>> > 
>> > So check out section
>> > http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.h
>> > tml#platdev-appdev-devshell. This talks about the whole devshell model. 
>> > One thing in this section is not current and that is the UI/Interfaces
>> > Configuration section
>> > reference in bitbake.conf file.  Regarding the section though, is this
>> > still a valid development model?  Is it worth keeping around in the docs?
>> > 
>> > As you can tell, I value your opinions greatly :)
>> 
>> As I understand it, this is still a perfectly valid working model.
>> Someone was just recommending it this week on the list.
>> 
>> As for the bitbake.conf file... I'm not sure. I thought this would have
>> been controlled by the following in local.conf.
>> 
>> # If you do not use (or have installed) gnome-terminal you will need to
>> # uncomment these variables and set them to the terminal you wish to use
>> # when resolving patches which cannot be applied
>> # Supported shell prefixes for *_TERMCMD and *_TERMCMDRUN ARE:
>> # GNOME, SCREEN, XTERM and SCREEN
>> TERMCMD = "${SCREEN_TERMCMD}"
>> TERMCMDRUN = "${SCREEN_TERMCMDRUN}"
>> 
>> But... it clearly is not after some testing. Hrm... I don't see anything
>> matching in bitbake.conf either. Where this has migrated off to would be
>> a good question for the list, hopefully someone like Paul E. can answer
>> this quickly.

Hmm, apparently I didn't - sorry about that! TERMCMD* were replaced by
OE_TERMINAL some time ago. I see we don't have any references to TERMCMD* so
I guess you removed these already. FYI there is a short reference to the
available options for the new OE_TERMINAL in the example config file which
you should be able to copy and adapt:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto/conf/local.conf.sample

Please let me know if you need any more info.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

