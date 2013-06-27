Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 993B0E01565
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 14:02:13 -0700 (PDT)
Received: (qmail 7347 invoked by uid 1003); 27 Jun 2013 21:02:11 -0000
Received: from unknown (HELO ?192.168.1.122?)
	(philip@opensdr.com@96.240.165.115)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	27 Jun 2013 21:02:11 -0000
Message-ID: <51CCA852.5080305@balister.org>
Date: Thu, 27 Jun 2013 17:02:10 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1BKJqnLcbJq786d3LjA6D7gDLLQifccMA4m9m0cKOXj+g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF51E45@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF51E45@ORSMSX101.amr.corp.intel.com>
X-Enigmail-Version: 1.5.1
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Layer input
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
X-List-Received-Date: Thu, 27 Jun 2013 21:02:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/27/2013 03:41 AM, Rifenbark, Scott M wrote:
> Hi,
> 
> I have tweaked this figure some based on Bruce and Jerrod's input.  To help me figure out some of the basics, I ran the yocto-layer and bsp-layer scripts to create a general and BSP layer, respectively.  Please look over the contents of these layers and comment.  General comments on the whole concept of how I am presenting the layers are welcome along with any other observations.

I'm confused by the last line of test about Yocto project layers and
layers exclusive to oe-core. All layers should play together, so the
concept of layers exclusive to oe-core does not make sense to me.

Philip

> 
> Thanks,
> Scott
> 
> From: Jerrod Peach [mailto:peachj@lexmark.com]
> Sent: Tuesday, June 25, 2013 11:07 AM
> To: Rifenbark, Scott M
> Cc: yocto@yoctoproject.org; Paul Eggleton
> Subject: Re: [yocto] Layer input
> 
> Scott,
> 
>   *   Distro Layer
> 
>      *   I'm unclear on what <name> is.  Is that supposed to be <distro>?  <recipe>?  It probably shouldn't just be <name>, should it?
> 
>   *   Software Layer
> 
>      *   Should COPYING.MIT just be COPYING to be more generically applicable?
>      *   conf/<layer_name>.conf should be just layer.conf, right?
> 
>   *   BSP Layer
> 
>      *   COPYING.MIT file again.
>      *   machine/<name>.conf should probably be machine/<machine*>.conf.  You can probably drop the non-asterisk version, since an asterisk implies, "There might be more stuff, there might not."
>      *   recipes-bsp/formfactor shouldn't also have another formfactor directory, should it?  Or is the "files" directory in 1.4 replaced with another formfactor-named directory?  Also, <name> should be <machine> again.
>      *   What's everything from recipes-core down?  I can buy recipes-kernel being in a bsp, but are any other directories really necessary?
> Kind regards,
> 
> Jerrod
> 
> On Tue, Jun 25, 2013 at 8:35 AM, Rifenbark, Scott M <scott.m.rifenbark@intel.com<mailto:scott.m.rifenbark@intel.com>> wrote:
> Hi,
> 
> This next illustration attempting to dive deeper in the YP Development Process takes the remaining left-side input from that figure in the Quick Start (metadata, Machine, and Policy).  Note that when the original figure was created that appears in the QS, the layer stuff had not yet been established.  This figure I am attaching is rough.  I am unsure as to the contents of these layers.  Right now it is detailed but with generic names.  The idea is that individual layers are preferred to do things such as provide software, configure policy, and configure machines.  I am including some notes at the bottom of the figure that would not be part of the figure but might help to get across what I am trying to accomplish here.
> 
> Any suggestions and feedback is really appreciated.
> 
> Thanks,
> Scott
> 
> Scott Rifenbark
> Intel Corporation
> Yocto Project Documentation
> 503.712.2702<tel:503.712.2702>
> 503.341.0418<tel:503.341.0418> (cell)
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

