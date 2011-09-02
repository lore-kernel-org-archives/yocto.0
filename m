Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60491E00320
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 10:09:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p82H9ll0002880
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Sep 2011 10:09:47 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Sep 2011 10:09:47 -0700
Message-ID: <4E610DDA.9040701@windriver.com>
Date: Fri, 2 Sep 2011 12:09:46 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:6.0.1) Gecko/20110830 Thunderbird/6.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
	<4E60F024.4030000@windriver.com>
	<CAEsOVNcKFXTJ9WhvVsoO4q-T6zFLhN96_wLnMySW2oyo6ZCcNw@mail.gmail.com>
	<4E60FAC3.5030100@windriver.com>
	<CAEsOVNfiWqV18ZaFJC5ZnzRx3fkrnLHXoJYOdbR0Cuud8tWEXw@mail.gmail.com>
In-Reply-To: <CAEsOVNfiWqV18ZaFJC5ZnzRx3fkrnLHXoJYOdbR0Cuud8tWEXw@mail.gmail.com>
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
X-List-Received-Date: Fri, 02 Sep 2011 17:09:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 9/2/11 11:24 AM, McClintock Matthew-B29882 wrote:
> On Fri, Sep 2, 2011 at 10:48 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
>> The normal OE approach is to resolve all items by run-time dependencies.  That
>> is why a lot more is built then installed.
>>
>> So if you want a system capable of running bash, you would create a task (and
>> related image) that simply has a RDEPENDS on "bash".  Everything else is
>> determined automatically.  So even if you build ncurses for 32-bit and 64-bit,
>> only the one needed by bash will be installed.
>>
>> If you change this and specify that your task RDEPENDS is "bash lib64-ncurses".
>>  Then the system will determine the dependencies based on both bash and the
>> 64-bit ncurses.  This will result in a system (likely 32-bit in this example)
>> that includes bash and lib64-ncurses and all of it's dependencies...
>>
>> The point is, if you explicitly tell the system to install something it is
>> expected to be installed.  If you don't the automatic resolution is used to
>> determine install components and not everything you want may be installed.
> 
> One would expect then if I did a:
> 
> MULTILIB_IMAGE_INSTALL += "lib64-perl"
> 
> I would be a 64bit perl and a slew of 64 bit libraries installed. I'm
> still trying to figure out why this is not happening on my particular
> build.

For everything I see, that should work.

In classes/image.bbclass, RDEPENDS is augmented by the contents of
IMAGE_INSTALL, LINGUAS_INSTALL, MULTILIB_IMAGE_INSTALL, and NORMAL_FEATURE_INSTALL.

The place to start looking for this is within the log.do_rootfs in the rootfs
directory you are working on.  You should see something that indicates it's
trying to install the "lib64-perl".  (in the case of RPM, it should eventually
rename it to "perl" -- but choose the 64-bit version.)

--Mark

> -M


