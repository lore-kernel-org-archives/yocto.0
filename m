Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F04FE01264
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 08:48:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p82FmLj1019497
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Sep 2011 08:48:21 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Sep 2011 08:48:19 -0700
Message-ID: <4E60FAC3.5030100@windriver.com>
Date: Fri, 2 Sep 2011 10:48:19 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:6.0.1) Gecko/20110830 Thunderbird/6.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
	<4E60F024.4030000@windriver.com>
	<CAEsOVNcKFXTJ9WhvVsoO4q-T6zFLhN96_wLnMySW2oyo6ZCcNw@mail.gmail.com>
In-Reply-To: <CAEsOVNcKFXTJ9WhvVsoO4q-T6zFLhN96_wLnMySW2oyo6ZCcNw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM multilib package installation issue
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
X-List-Received-Date: Fri, 02 Sep 2011 15:48:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 9/2/11 10:40 AM, McClintock Matthew-B29882 wrote:
> On Fri, Sep 2, 2011 at 10:03 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
>>> However in run time testing I met a problem that, for those libraries whose
>>> base/multilib versions packages will be both built out (like libgtk, it has
>>> "libgtk-2.0-2.22.1-r2.x86_64.rpm" and "libgtk-2.0-2.22.1-r2.x86.rpm"), the
>>> rpm will only installs the lib32 version of it.
>>
>> During filesystem construction the system uses dependencies to decide what to
>> install.  If you build a 32-bit connman-gnome and it requires other 32-bit
>> libraries the dependency scanner will either pick them up and install them, or
>> error due to missing dependencies.
> 
> Some you are saying since we do not build an actual binary that
> depends on the 64bit library we just drop the libraries we requested
> to be installed?
> 
> -M

The normal OE approach is to resolve all items by run-time dependencies.  That
is why a lot more is built then installed.

So if you want a system capable of running bash, you would create a task (and
related image) that simply has a RDEPENDS on "bash".  Everything else is
determined automatically.  So even if you build ncurses for 32-bit and 64-bit,
only the one needed by bash will be installed.

If you change this and specify that your task RDEPENDS is "bash lib64-ncurses".
 Then the system will determine the dependencies based on both bash and the
64-bit ncurses.  This will result in a system (likely 32-bit in this example)
that includes bash and lib64-ncurses and all of it's dependencies...

The point is, if you explicitly tell the system to install something it is
expected to be installed.  If you don't the automatic resolution is used to
determine install components and not everything you want may be installed.

--Mark

