Return-Path: <huanmateme@163.com>
Received: from m13-104.163.com (unknown [220.181.13.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E3D5E00726
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 22:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Cc:Subject:In-Reply-To:
	References:Content-Type:MIME-Version:Message-ID; bh=5BjO3US8kMIC
	y5b2gWPqFAyea55GQai73EnkQVGj7xQ=; b=YSGRGFntKADLah934ymu+FWMX6rk
	+YQAnWn9bHF1Z4F99nl1jUpeItm6pUdCP4Iudj2LzPSNPsl+9UmoZm4Op3lQyzR+
	GvyruFaP3leiEhuAgb8xboBJYlouHZc/MK50cMisN90VrLEblhaoXBYpjPNM11Kn
	ScMV7SjM9LzMu5E=
Received: from huanmateme$163.com ( [61.148.56.138] ) by
	ajax-webmail-wmsvr104 (Coremail) ; Tue, 25 Dec 2012 14:16:40 +0800 (CST)
X-Originating-IP: [61.148.56.138]
Date: Tue, 25 Dec 2012 14:16:40 +0800 (CST)
From: Biao  <huanmateme@163.com>
To: "Mihai Lindner" <mihaix.lindner@linux.intel.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20121219(21170.5156.5150) Copyright (c) 2002-2012 www.mailtech.cn
	163com
In-Reply-To: <1356352646.358.8.camel@mlindnex-mobl1.ger.corp.intel.com>
References: <4e4f660f.1086b.13bcbd86279.Coremail.huanmateme@163.com>
	<1356351789.358.4.camel@mlindnex-mobl1.ger.corp.intel.com>
	<1356352646.358.8.camel@mlindnex-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Message-ID: <28832c0.77c6.13bd0b4afab.Coremail.huanmateme@163.com>
X-CM-TRANSID: aMGowEAp6EDJRNlQORoYAA--.56203W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbBiAiQgE9o6nNy+AAAsk
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: yocto@yoctoproject.org
Subject: Re: Fails to launch the hob
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
X-List-Received-Date: Tue, 25 Dec 2012 06:17:17 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_114577_2049459481.1356416200619"

------=_Part_114577_2049459481.1356416200619
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit


At 2012-12-24 20:37:26,"Mihai Lindner" <mihaix.lindner@linux.intel.com> wrote:
>On Mon, 2012-12-24 at 14:23 +0200, Mihai Lindner wrote:
>> On Mon, 2012-12-24 at 15:37 +0800, Biao wrote:
>> > Hi all, 
>> > 
>> > 
>> > I can not launch hob on my ubun-10.04, it seems saying "no PyGobject" whereas python-object has already been installed. Can anyone kindly give a help?
>> > 
>Oh, forgot to mention here, that you should probably be using Denzil,
>instead of Danny or 'master'.
Thanks for the kindly reminder.
>> > 
>> > $ hob
>> > FATAL: Gtk+, PyGtk and PyGobject are required to use Hob,
>> > You have Gtk+ 2.20.1 and PyGtk 2.17.0.
>> > 
>> > 
>> > $ sudo apt-get install python-gobject
>> > Reading package lists... Done
>> > Building dependency tree       
>> > Reading state information... Done
>> > python-gobject is already the newest version.
>> > 
>> Python-gobject seems fine, Gtk seems fine (you have 2.20.1, Hob wants
>> higher than 2.20.0), which leaves python-gtk2 version 2.17.0 on your
>> system. Hob wants a version higher than 2.21.0.
Thanks for this information, it seems the prompt message on the environment checking is not so clear.  Where are the hob users supposed to get such kind of information from?
I did not found this information from the hob manual.
>> 
>> --Mihai
>> > 
>> > $ uname -a
>> > Linux zb-d 2.6.32-33-generic #72-Ubuntu SMP Fri Jul 29 21:07:13 UTC 2011 x86_64 GNU/Linux
>> > 
>> > 
>> > Thanks,
>> > Biao
>> > _______________________________________________ yocto mailing list yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
>> 
>> 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

------=_Part_114577_2049459481.1356416200619
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><pre><br>At&nbsp;2012-12-24&nbsp;20:37:26,"Mihai&nbsp;Lindner"&nbsp;&lt;mihaix.lindner@linux.intel.com&gt;&nbsp;wrote:
&gt;On&nbsp;Mon,&nbsp;2012-12-24&nbsp;at&nbsp;14:23&nbsp;+0200,&nbsp;Mihai&nbsp;Lindner&nbsp;wrote:
&gt;&gt;&nbsp;On&nbsp;Mon,&nbsp;2012-12-24&nbsp;at&nbsp;15:37&nbsp;+0800,&nbsp;Biao&nbsp;wrote:
&gt;&gt;&nbsp;&gt;&nbsp;Hi&nbsp;all,&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;I&nbsp;can&nbsp;not&nbsp;launch&nbsp;hob&nbsp;on&nbsp;my&nbsp;ubun-10.04,&nbsp;it&nbsp;seems&nbsp;saying&nbsp;"no&nbsp;PyGobject"&nbsp;whereas&nbsp;python-object&nbsp;has&nbsp;already&nbsp;been&nbsp;installed.&nbsp;Can&nbsp;anyone&nbsp;kindly&nbsp;give&nbsp;a&nbsp;help?
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;Oh,&nbsp;forgot&nbsp;to&nbsp;mention&nbsp;here,&nbsp;that&nbsp;you&nbsp;should&nbsp;probably&nbsp;be&nbsp;using&nbsp;Denzil,
&gt;instead&nbsp;of&nbsp;Danny&nbsp;or&nbsp;'master'.</pre><pre>Thanks for the kindly reminder.
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;$&nbsp;hob
&gt;&gt;&nbsp;&gt;&nbsp;FATAL:&nbsp;Gtk+,&nbsp;PyGtk&nbsp;and&nbsp;PyGobject&nbsp;are&nbsp;required&nbsp;to&nbsp;use&nbsp;Hob,
&gt;&gt;&nbsp;&gt;&nbsp;You&nbsp;have&nbsp;Gtk+&nbsp;2.20.1&nbsp;and&nbsp;PyGtk&nbsp;2.17.0.
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;$&nbsp;sudo&nbsp;apt-get&nbsp;install&nbsp;python-gobject
&gt;&gt;&nbsp;&gt;&nbsp;Reading&nbsp;package&nbsp;lists...&nbsp;Done
&gt;&gt;&nbsp;&gt;&nbsp;Building&nbsp;dependency&nbsp;tree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;Reading&nbsp;state&nbsp;information...&nbsp;Done
&gt;&gt;&nbsp;&gt;&nbsp;python-gobject&nbsp;is&nbsp;already&nbsp;the&nbsp;newest&nbsp;version.
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;&gt;&nbsp;Python-gobject&nbsp;seems&nbsp;fine,&nbsp;Gtk&nbsp;seems&nbsp;fine&nbsp;(you&nbsp;have&nbsp;2.20.1,&nbsp;Hob&nbsp;wants
&gt;&gt;&nbsp;higher&nbsp;than&nbsp;2.20.0),&nbsp;which&nbsp;leaves&nbsp;python-gtk2&nbsp;version&nbsp;2.17.0&nbsp;on&nbsp;your
&gt;&gt;&nbsp;system.&nbsp;Hob&nbsp;wants&nbsp;a&nbsp;version&nbsp;higher&nbsp;than&nbsp;2.21.0.</pre><pre>Thanks for this information, it seems the prompt message on the environment checking is not so clear.  Where are the hob users supposed to get such kind of information from?</pre><pre>I did not found this information from the hob manual.</pre><pre>&gt;&gt;&nbsp;
&gt;&gt;&nbsp;--Mihai
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;$&nbsp;uname&nbsp;-a
&gt;&gt;&nbsp;&gt;&nbsp;Linux&nbsp;zb-d&nbsp;2.6.32-33-generic&nbsp;#72-Ubuntu&nbsp;SMP&nbsp;Fri&nbsp;Jul&nbsp;29&nbsp;21:07:13&nbsp;UTC&nbsp;2011&nbsp;x86_64&nbsp;GNU/Linux
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;
&gt;&gt;&nbsp;&gt;&nbsp;Thanks,
&gt;&gt;&nbsp;&gt;&nbsp;Biao
&gt;&gt;&nbsp;&gt;&nbsp;_______________________________________________&nbsp;yocto&nbsp;mailing&nbsp;list&nbsp;yocto@yoctoproject.org&nbsp;https://lists.yoctoproject.org/listinfo/yocto
&gt;&gt;&nbsp;
&gt;&gt;&nbsp;
&gt;&gt;&nbsp;_______________________________________________
&gt;&gt;&nbsp;yocto&nbsp;mailing&nbsp;list
&gt;&gt;&nbsp;yocto@yoctoproject.org
&gt;&gt;&nbsp;https://lists.yoctoproject.org/listinfo/yocto
&gt;
&gt;
&gt;_______________________________________________
&gt;yocto&nbsp;mailing&nbsp;list
&gt;yocto@yoctoproject.org
&gt;https://lists.yoctoproject.org/listinfo/yocto
</pre></div>

------=_Part_114577_2049459481.1356416200619--
