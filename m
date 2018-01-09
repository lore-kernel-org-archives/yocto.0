Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85D12E00DA9; Tue,  9 Jan 2018 08:14:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Jan 2018 08:14:14 PST
Received: from bin-vsp-out-03.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 366CBE00D6B
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 08:14:14 -0800 (PST)
X-Halon-ID: f9b56ef1-f557-11e7-814a-0050569116f7
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-03.atm.binero.net (Halon) with ESMTPA
	id f9b56ef1-f557-11e7-814a-0050569116f7;
	Tue, 09 Jan 2018 17:13:06 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 09 Jan 2018 17:12:57 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Yocto <yocto@yoctoproject.org>, <vincent.chin.keong.kok@intel.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <A2B3664D-B676-4A0C-ACC4-147C51D72B30@intel.com>
References: <04146D936EE8544DA96D472768509EC31AAD3DA9@PGSMSX111.gar.corp.intel.com>,
	<c0d1faf4-1896-3263-1046-bded8246f07b@linux.intel.com>
	<A2B3664D-B676-4A0C-ACC4-147C51D72B30@intel.com>
Message-ID: <16d2ebb752753a4cf2c85450fc5ee55e@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: Upgrading Yocto Project Version - To Rocko
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Jan 2018 16:14:16 -0000
Content-Type: multipart/alternative;
	boundary="=_bef351f6d4be45e865d320295ec27118"

--=_bef351f6d4be45e865d320295ec27118
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

 

Hi Vincent, 

When you are talking about database, are you talking
about specific data from your generated project (such as the sstate
cache) or are you talking about data in your current poky folder? If you
are talking about project specific data I would recommend you create a
new project and build from scratch when doing such a large upgrade (Fido
--> Rocko), since a lot of stuffs have changed. For example
bblayers.conf looks different (meta-yocto renamed to meta-poky) and so
on. But if you have cusomizations done for fido you of course need
ensure that these changes are manually exported to the new Rocko based
project (for example point out custom layers in bblayers.conf and
MACHINE in local.conf after creating your new project). 

If you are
afraid of wiping git changes, and you already have an existing poky git
clone you can just fetch the data (git fetch) then checkout the wanted
branch, tag or revision. 

BR Petter 

2018-01-09 14:35 skrev Kok,
Vincent Chin Keong: 

> How if I want to remain my database from
previous version? How can I export them?
> 
> Warmest regards, 
>
Vincent Kok 
> 
> Sent from my iPad 
> 
> On Jan 9, 2018, at 20:45,
Alexander Kanavin <alexander.kanavin@linux.intel.com> wrote:
> 
>> On
01/09/2018 01:55 PM, Kok, Vincent Chin Keong wrote:
>> 
>>> I was
wondering, how can I upgrade to Yocto version 2.4 (Rocko)? Do I just
remove the previous poky folder I downloaded and re-download a newer
version of poky and checkout the branch and tags?
>> 
>> The easiest is
to perform a clean clone of the poky repo, and check out the tag you
want.
>> 
>> Alex
 

--=_bef351f6d4be45e865d320295ec27118
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>Hi Vincent,</p>
<p>When you are talking about database, are you talking about specific dat=
a from your generated project (such as the sstate cache) or are you talking=
 about data in your current poky folder? If you are talking about project s=
pecific data I would recommend you create a new project and build from scra=
tch when doing such a large upgrade (Fido --&gt; Rocko), since a lot of stu=
ffs have changed. For example bblayers.conf looks different (meta-yocto ren=
amed to meta-poky) and so on. But if you have cusomizations done for fido y=
ou of course need ensure that these changes are manually exported to the ne=
w Rocko based project (for example point out custom layers in bblayers.conf=
 and MACHINE in local.conf after creating your new project).</p>
<p>If you are afraid of wiping git changes, and you already have an existi=
ng poky git clone you can just fetch the data (git fetch) then checkout the=
 wanted branch, tag or revision.</p>
<p>BR Petter </p>
<p>&nbsp;</p>
<p>2018-01-09 14:35 skrev Kok, Vincent Chin Keong:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2=
px solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignor=
ed --><!-- meta ignored -->
<div>How if I want to remain my database from previous version? How can I =
export them?<br /><br />
<div>Warmest regards,</div>
<div>Vincent Kok</div>
<div>&nbsp;</div>
<div><span style=3D"font-size: 13pt;">&nbsp;</span></div>
</div>
<div><br /> On Jan 9, 2018, at 20:45, Alexander Kanavin &lt;<a href=3D"mai=
lto:alexander.kanavin@linux.intel.com">alexander.kanavin@linux.intel.com</a=
>&gt; wrote:<br /><br /></div>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2=
px solid; margin-left:5px; width:100%">
<div><span>On 01/09/2018 01:55 PM, Kok, Vincent Chin Keong wrote:</span><b=
r /><span></span><br />
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2=
px solid; margin-left:5px; width:100%"><span>I was wondering, how can I upg=
rade to Yocto version 2.4 (Rocko)? Do I just remove the previous poky folde=
r I downloaded and re-download a newer version of poky and checkout the bra=
nch and tags?</span></blockquote>
<span></span><br /><span>The easiest is to perform a clean clone of the po=
ky repo, and check out the tag you want.</span><br /><span></span><br /><sp=
an>Alex</span></div>
</blockquote>
</blockquote>
</body></html>

--=_bef351f6d4be45e865d320295ec27118--
