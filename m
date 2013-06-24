Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id D609DE013A2
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 06:15:30 -0700 (PDT)
Received: (qmail 1914 invoked by uid 1003); 24 Jun 2013 12:50:09 -0000
Received: from unknown (HELO ?192.168.1.122?) (philip@opensdr.com@71.171.20.82)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	24 Jun 2013 12:50:09 -0000
Message-ID: <51C8466F.8040808@balister.org>
Date: Mon, 24 Jun 2013 09:15:27 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
X-Enigmail-Version: 1.5.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 13:15:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/23/2013 11:52 PM, Rifenbark, Scott M wrote:
> Hi, 
> 
> I am going to start throwing these diagrams out to the mailing list and see if I can get any feedback.  This attached figure dives into user configuration.  Any and all discussion, correction, suggestions are welcome. 

It appears the diagram says that the oe-init-build-env script creates
the files in the users conf dir from the meta-yocto layer. These files
(and the script) are in meta. This diagram creates the misleading idea
that the meta-yocto layer is mandatory in order to create a working build.

Philip

> 
> Scott
> 
>> -----Original Message-----
>> From: Rifenbark, Scott M
>> Sent: Friday, June 21, 2013 1:22 AM
>> To: Paul Eggleton; Burton, Ross
>> Subject: user configuration
>>
>> Paul and Ross,
>>
>> Attached is a sample figure that focuses on "User Configuration."  The
>> illustration attempts to reveal where user configuration data comes from
>> and what processes and user-driven commands are related to it.  Right
>> now, BitBake is simply a box.
>>
>> If you can, give me some comments on this.  I would like to hear on
>> level of detail as well as technical accuracy.
>>
>> Thanks,
>> Scott
>>
>> Scott Rifenbark
>> Intel Corporation
>> Yocto Project Documentation
>> 503.712.2702
>> 503.341.0418 (cell)
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

