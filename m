Return-Path: <aph@redhat.com>
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A3AE01763
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 09:59:14 -0800 (PST)
Received: from int-mx10.intmail.prod.int.phx2.redhat.com
	(int-mx10.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	by mx1.redhat.com (8.14.4/8.14.4) with ESMTP id rA3HxCRW023456
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Sun, 3 Nov 2013 12:59:12 -0500
Received: from zebedee.pink (ovpn-113-156.phx2.redhat.com [10.3.113.156])
	by int-mx10.intmail.prod.int.phx2.redhat.com (8.14.4/8.14.4) with ESMTP
	id rA3HxAgW031376; Sun, 3 Nov 2013 12:59:11 -0500
Message-ID: <52768EEE.8080804@redhat.com>
Date: Sun, 03 Nov 2013 17:59:10 +0000
From: Andrew Haley <aph@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130912 Thunderbird/17.0.9
MIME-Version: 1.0
To: sonia verma <soniaverma9727@gmail.com>
References: <CAJ7Vayh_TRCh8fCzafG9vbkD8Wu9rF_a0A-L=bV39tA2hv_8-w@mail.gmail.com>
	<CAJ7VayhvsG8r0odzYiwYTXQ12J+kfewJz5K5GMs8kkM-+hvFfQ@mail.gmail.com>
In-Reply-To: <CAJ7VayhvsG8r0odzYiwYTXQ12J+kfewJz5K5GMs8kkM-+hvFfQ@mail.gmail.com>
X-Enigmail-Version: 1.6
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Mailman-Approved-At: Mon, 04 Nov 2013 08:57:01 -0800
Cc: yocto@yoctoproject.org, zero-dev@openjdk.java.net
Subject: Re: enable Shark support in JAVA
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
X-List-Received-Date: Sun, 03 Nov 2013 17:59:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/31/2013 03:10 PM, sonia verma wrote:
> adding zero-dev in loop.
> 
> 
> On Thu, Oct 31, 2013 at 8:38 PM, sonia verma <soniaverma9727@gmail.com>wrote:
> 
>> Hi ALL,
>>
>> I have integrated Java in one of the board having Powerpc architecture
>> using meta-java. By default it cam with Zero port support which only works
>> in interpreter mode.
>>
>> I need to enable Shark support in that. Can any one please help me with
>> the procedure to compile JAVA with Shark support.

Well, what help do you need?  You're going to have to find LLVM
for PowerPC and start doing some integration work.

Andrew.



