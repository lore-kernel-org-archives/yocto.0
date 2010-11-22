Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 069874C81065
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 05:27:54 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 9B10016607E1; Mon, 22 Nov 2010 04:27:54 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9A5C416606E9;
	Mon, 22 Nov 2010 04:27:53 -0700 (MST)
Message-ID: <4CEA53B8.9060804@mlbassoc.com>
Date: Mon, 22 Nov 2010 04:27:52 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4CEA3442.6080909@mlbassoc.com>
In-Reply-To: <4CEA3442.6080909@mlbassoc.com>
Subject: Re: Eclipse plugin
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
X-List-Received-Date: Mon, 22 Nov 2010 11:27:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 02:13 AM, Gary Thomas wrote:
> I'm interested in trying the Yocto Eclipse plugin with my Poky based builds.
> That said, I'm a true Eclipse novice :-(
>
> Does anyone have some guidance on what packages I might need to install to
> get a usable Eclipse framework on Fedora (13)? For example, the Yocto page
> mentions the "standard TCF" agent to contact the target - how do I make sure
> this is available and enabled?
>
> n.b. the [web] documentation on this plugin is pretty thin. Perhaps once I
> get this going, I can contribute some meat to put on these bones :-)
>
> Thanks
>

I tried to follow the documentation in the Poky manual (still thin...), but
it seems I'm now stuck.  I get this error:
   Cannot complete the install because one or more required items could not be found.
   Software being installed: Yocto Plugin for Eclipse 1.0.0.201010202121 (org.yocto.sdk.feature.group 1.0.0.201010202121)
   Missing requirement: Yocto Plugin Remote Tools 1.0.0.201010202121 (org.yocto.sdk.remotetools 1.0.0.201010202121) requires 'bundle org.eclipse.rse.terminals.ui 1.0.100' but it 
could not be found
   Cannot satisfy dependency:
     From: Yocto Plugin for Eclipse 1.0.0.201010202121 (org.yocto.sdk.feature.group 1.0.0.201010202121)

As far as I can tell, the eclise-rse package on Fedora 13 is version 1.0.1 :-(
Also, Fedora is still on Galileo 3.5.2, not Helios 3.6.

I guess I'll try the raw install of Helios since Fedora+YUM has failed me.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

