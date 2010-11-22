Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6839C4C80BEF
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 07:45:44 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 47BF2166038B; Mon, 22 Nov 2010 06:45:43 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id DC3F01660324;
	Mon, 22 Nov 2010 06:45:41 -0700 (MST)
Message-ID: <4CEA7405.8070700@mlbassoc.com>
Date: Mon, 22 Nov 2010 06:45:41 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: "Lu, Lianhao" <lianhao.lu@intel.com>
References: <4CEA3442.6080909@mlbassoc.com> <4CEA53B8.9060804@mlbassoc.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F1ACE892ED1@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1ACE892ED1@shsmsx502.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 22 Nov 2010 13:45:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 05:50 AM, Lu, Lianhao wrote:
> Gary Thomas wrote on 2010-11-22:
>> On 11/22/2010 02:13 AM, Gary Thomas wrote:
>>> I'm interested in trying the Yocto Eclipse plugin with my Poky based builds.
>>> That said, I'm a true Eclipse novice :-(
>>>
>>> Does anyone have some guidance on what packages I might need to
>>> install to get a usable Eclipse framework on Fedora (13)? For
>>> example, the Yocto page mentions the "standard TCF" agent to contact
>>> the target
>>> - how do I make sure this is available and enabled?
>>>
>>> n.b. the [web] documentation on this plugin is pretty thin. Perhaps
>>> once I get this going, I can contribute some meat to put on these
>>> bones :-)
>>>
>>> Thanks
>>>
>>
>> I tried to follow the documentation in the Poky manual (still
>> thin...), but it seems I'm now stuck.  I get this error:
>>     Cannot complete the install because one or more required items could
>>     not be found. Software being installed: Yocto Plugin for Eclipse
>>     1.0.0.201010202121 (org.yocto.sdk.feature.group 1.0.0.201010202121)
>>     Missing requirement: Yocto Plugin Remote Tools 1.0.0.201010202121
>> (org.yocto.sdk.remotetools 1.0.0.201010202121) requires 'bundle
>> org.eclipse.rse.terminals.ui 1.0.100' but it could not be found
>>     Cannot satisfy dependency:
>>       From: Yocto Plugin for Eclipse 1.0.0.201010202121
>> (org.yocto.sdk.feature.group 1.0.0.201010202121)
>>
>> As far as I can tell, the eclise-rse package on Fedora 13 is version
>> 1.0.1 :-( Also, Fedora is still on Galileo 3.5.2, not Helios 3.6.
>>
>> I guess I'll try the raw install of Helios since Fedora+YUM has failed me.
>>
> Gary,
>
> Sorry for the thin documentation about eclipse plug-in installation.
>
> The Yocto eclipse plugin has some dependencies on other eclipse plugins:
> - C/C++ Development Tools (CDT) (http://download.eclipse.org/tools/cdt/releases/helios if using Eclipse 3.6Helios, or http://download.eclipse.org/tools/cdt/releases/galileo if using Eclipse 3.5Galileo)
> - Autotools support for CDT (Incubation) (http://download.eclipse.org/technology/linuxtools/update)
> - Target Management (RSE) (http://download.eclipse.org/dsdp/tm/updates/3.2)
>
> To install one of the above eclipse plugins in the IDE,
> 1. Go to Help>  Install New Software... to open the Install dialog.
> 2. Click the Add... button; this will display the Add Site dialog.
> 3. Enter the corresponding URL in the Location: field and click "OK". This will add the corresponding update site to the list of available sites.
> 4. The corresponding update site should now be selected in the "Work with:" selection box. If not, you can select it from the list by clicking the down arrow and locating its entry. You can simply collapse the entry for this site to view content available for installation.
> 5. Check the corresponding box and click Next button, following the wizard to install the plug-in.

Thanks, I installed Helios directly from the Eclipse site and that's
working better now.  I also installed the components you mention above.

When I try to configure Yocto, I'm trying to use the Poky tree method
but it doesn't like my tree :-(  I pointed it to my build directory
(the one which contains tmp/, sstate-cache/ and conf/)

What else am I missing?


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

