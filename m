Return-Path: <edward.ekelund@axis.com>
Received: from anubis.se.axis.com (anubis.se.axis.com [195.60.68.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86649E0071E
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 05:05:35 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by anubis.se.axis.com (Postfix) with ESMTP id 6786819D8F
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 14:05:31 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at anubis.se.axis.com
Received: from anubis.se.axis.com ([127.0.0.1])
	by localhost (anubis.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id vTOiB3CHdrB3 for <yocto@yoctoproject.org>;
	Fri, 22 Feb 2013 14:05:30 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by anubis.se.axis.com (Postfix) with ESMTP id 9565D19D1D
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 14:05:30 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id 4939C3E312
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 14:05:30 +0100 (CET)
Received: from [10.92.58.1] (10.92.58.1) by xmail2.se.axis.com (10.0.5.74)
	with Microsoft SMTP Server (TLS) id 8.2.176.0; Fri, 22 Feb 2013 14:05:30
	+0100
Message-ID: <51276D8B.1050908@axis.com>
Date: Fri, 22 Feb 2013 14:07:23 +0100
From: Edward Ekelund <edward.ekelund@axis.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <51260DE2.6060902@axis.com>
In-Reply-To: <51260DE2.6060902@axis.com>
Subject: Re: Eclipse "Error creating session, Could not find platform independent libraries <prefix>"
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
X-List-Received-Date: Fri, 22 Feb 2013 13:05:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

I found that the cause of this is in the debugger settings.

To remedy this go Run->Debug Configurations->C/C++ Remote 
Application->YWHC_GDB_i586-poky-linux
Then select the Debugger-tab, and click on the pull-down menu with 
remote gdb/mi in it. The "GDB debugger" field will change from something 
similar to "<tool-chain 
root>/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux/i586-poky-linux-gdb" 
into simply "gdb". The "GDB command file"-field will change in a similar 
manner to ".gdbinit". Running the debugger should now work.

On 02/21/2013 01:06 PM, Edward Ekelund wrote:
> Hi,
>
> I encounter the error
> "
> Error creating session
> Could not find platform independent libraries <prefix>
> Could not find platform independent libraries <prefix>
> Could not find platform independent libraries <prefix>
> "
>
> in a pop up-window when attempting cross degugging following the lab
> found here:
> https://www.yoctoproject.org/tools-resources/presentations/using-eclipse-yocto-project
>
> Does anyone know what the problem might be?
>

