Return-Path: <micke.prag@telldus.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C375E008FB; Thu,  8 Jan 2015 06:11:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 307 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Jan 2015 06:11:12 PST
Received: from vsp-authed-01-01.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E3436E008E5
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 06:11:12 -0800 (PST)
Received: from miraculix.kontrollpanelen.se (unknown [194.30.169.110])
	by vsp-authed-01-01.binero.net (Halon Mail Gateway) with ESMTP
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 15:06:21 +0100 (CET)
Received: from [195.74.38.9] (helo=webmail.binero.se)
	by miraculix.kontrollpanelen.se with esmtpa (Exim 4.76)
	(envelope-from <micke.prag@telldus.se>) id 1Y9Dim-0003cC-5E
	for yocto@yoctoproject.org; Thu, 08 Jan 2015 15:05:56 +0100
MIME-Version: 1.0
Date: Thu, 08 Jan 2015 15:05:55 +0100
From: micke.prag@telldus.se
To: <yocto@yoctoproject.org>
In-Reply-To: <mailman.26028.1420723936.26702.yocto@yoctoproject.org>
References: <mailman.26028.1420723936.26702.yocto@yoctoproject.org>
Message-ID: <ed50fcd8b289bf53feafefe8c22676f4@telldus.se>
X-Sender: micke.prag@telldus.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: is it not a *requirement* that layers start with 	"meta-"?
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
X-List-Received-Date: Thu, 08 Jan 2015 14:11:17 -0000
Content-Type: multipart/alternative;
	boundary="=_d5dcc2abe8443e44eafe6d59bfafe7e9"

--=_d5dcc2abe8443e44eafe6d59bfafe7e9
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

 

> Message: 6
> Date: Thu, 8 Jan 2015 08:31:58 -0500 (EST)
> From:
"Robert P. J. Day" <rpjday@crashcourse.ca>
> To: Anders Darander
<anders@chargestorm.se>
> Cc: Yocto discussion list
<yocto@yoctoproject.org>,
> "peterengcomau001@adam.com.au"
<peterengcomau001@adam.com.au>
> Subject: Re: [yocto] is it not a
*requirement* that layers start with
> "meta-"?
> Message-ID:
<alpine.LFD.2.11.1501080831200.31772@localhost>
> Content-Type:
TEXT/PLAIN; charset=US-ASCII
> 
> On Thu, 8 Jan 2015, Anders Darander
wrote:
> 
>> * Robert P. J. Day <rpjday@crashcourse.ca> [150105 18:09]:

>> 
>>> On Mon, 5 Jan 2015, Rifenbark, Scott M wrote:
>> 
>>>> If
anyone can locate some scripts or something that actually does require
"meta-" to be prepended please let me know. That changes how we describe
this.
>> for pkg in `bitbake -s | awk '{ print $1 }'`; do ... snip ...
>

> ah, quite so, so perhaps the "meta-" prefix is not a real
>
requirement, just convention.
> 
> rday
> 
> --

The layer
"openembedded-core" does not start with "meta-". 

--=_d5dcc2abe8443e44eafe6d59bfafe7e9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<pre>Message: 6
Date: Thu, 8 Jan 2015 08:31:58 -0500 (EST)
From: "Robert P. J. Day" &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjda=
y@crashcourse.ca</a>&gt;
To: Anders Darander &lt;<a href=3D"mailto:anders@chargestorm.se">anders@cha=
rgestorm.se</a>&gt;
Cc: Yocto discussion list &lt;<a href=3D"mailto:yocto@yoctoproject.org">yoc=
to@yoctoproject.org</a>&gt;,
	"<a href=3D"mailto:peterengcomau001@adam.com.au">peterengcomau001@adam.com=
=2Eau</a>" &lt;<a href=3D"mailto:peterengcomau001@adam.com.au">peterengcoma=
u001@adam.com.au</a>&gt;
Subject: Re: [yocto] is it not a *requirement* that layers start with
	"meta-"?
Message-ID: &lt;alpine.LFD.2.11.1501080831200.31772@localhost&gt;
Content-Type: TEXT/PLAIN; charset=3DUS-ASCII

On Thu, 8 Jan 2015, Anders Darander wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">* Robert P. J. Day &lt;<a href=3D"mai=
lto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; [150105 18:09]:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On Mon, 5 Jan 2015, Rifenbark, Scott =
M wrote:</blockquote>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">If anyone can locate some scripts or =
something that actually does require "meta-" to be prepended please let me =
know. That changes how we describe this.</blockquote>
</blockquote>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">as an admittedly simple example, i ra=
n across this in oe-core's scripts/contrib/documentation-audit.sh:</blockqu=
ote>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">for pkg in `bitbake -s | awk '{ print=
 \$1 }'`; do</blockquote>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">... snip ...</blockquote>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">if [[ "$pkg" =3D~ ^meta- || "$pkg" =
=3D~ ^packagegroup- || "$pkg" =3D~ -image ]]; then # Skip meta, task and im=
age recipes continue fi</blockquote>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">checking that the package name starts=
 with "meta-" seems to pretty clearly suggest that it will be treated diffe=
rently than if it doesn't. i'm sure no one is terribly worried about that p=
articular script, but it does seem to show an example of this.</blockquote>
But that's checking *recipe* names, not layer names... Thus, you'll have to=
 look for another example. ;)</blockquote>
<pre>  ah, quite so, so perhaps the "meta-" prefix is not a real
requirement, just convention.

rday

<span class=3D"sig">-- <br /></span></pre>
</blockquote>
<p>The layer "openembedded-core" does not start with "meta-".</p>
</body></html>

--=_d5dcc2abe8443e44eafe6d59bfafe7e9--
