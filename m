Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63C8BE00A8C; Fri,  9 Oct 2015 11:30:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B532E00A8C
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 11:30:33 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZkcR3-0007mE-OL
	for yocto@yoctoproject.org; Fri, 09 Oct 2015 20:30:29 +0200
Received: from ppp-2-86-169-83.home.otenet.gr ([2.86.169.83])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 20:30:29 +0200
Received: from gmane by ppp-2-86-169-83.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 20:30:29 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 09 Oct 2015 21:30:13 +0300
Message-ID: <561807B5.2010206@reliableembeddedsystems.com>
References: <10D57FBA9FD7C14FB49EE17590E1AF94011F907751@svr-exc-03.intern.wipotec.de>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-169-83.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <10D57FBA9FD7C14FB49EE17590E1AF94011F907751@svr-exc-03.intern.wipotec.de>
Subject: Re: VFAT patent EP 0 618 540
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
X-List-Received-Date: Fri, 09 Oct 2015 18:30:37 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hi,

On 10/09/2015 11:36 AM, Gorny Krystian wrote:
> Hi,
> 
> I have a question regarding the VFAT patent (EP 0 618 540) owned by
> Microsoft. It’s about common name space for long and short filenames. I
> have read that this patent was canceled by Germany / EU, but it’s still
> available in the US right? So is there a patch/option where we can
> activate to avoid this patent?

I am not a lawyer, but wouldn't it be easier not to use VFAT?
The only reason I would use it, would be because the bootloader of my
SoC would only be able to boot over FAT/FAT32 from a managed flash. A
patch will not help here as well;)

There are rumors that a fix was implemented a long time ago[1] ;)

> 
> Thanks
> 
> Krystian
> 

Regards,

Robert


[1]
http://arstechnica.com/information-technology/2009/07/vfat-linux-patch-could-circumvent-microsofts-patent-claims/

> 
> Legal information:
> Wipotec Wiege- und Positioniersysteme GmbH
> HRB 2317 Kaiserslautern, Management: T. Düppre, U. Wagner
> 
> This e-mail may contain confidential and/or privileged information.
> If you are not the intended recipient (or have received this e-mail in
> error)
> please notify the sender immediately and delete this e-mail. Any
> unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> 

Since you are concerned about legal issues you might also want to remove
this footer when posting to public lists ;)

> 
> -- 
> 

..."Rules of Optimization: Rule1: Don't do it. Rule 2 (for experts
only): Don't do it yet." - M.A. Jackson (not the singer)

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



