Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F1A4E017D2
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 10:05:58 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id ar20so5365323iec.40
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 10:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XenPBXJcbd0zGYf99+qOVdLWnbDpa3z3mTAdVhD3JXE=;
	b=p9STBYXPEObo418sjD4bmKNVyH9mpdM3RlSMjqaVct2w6XvNbu6BZCpBaQjIdWrPaO
	gHefBtHducQtkWLQ0VJ4+Syqj70yVOz+WD7DrlsN/5GhuGtzlE4t9dlSsr4rM2xItVSq
	74LT8ceXi9gmb/epKJhhx2uDibV0Ra2i6PK2hEgbVTS3LTQgTH1gY2VBaFEEgajpNkNZ
	ROLG4AyLPtD4JWjT7e0rldZnXzBCsbZIEHnieYfLiLKcTbnCpbI2NhGye5jTryS3MCyd
	yPLulQgL4OX4mb8RZU8iEZt+yC+Xz5VREgqyeSqyZJBt6agMZgQHL3747mIfIn1nSyp5
	bLMg==
X-Received: by 10.50.26.36 with SMTP id i4mr251095igg.33.1383239157946; Thu,
	31 Oct 2013 10:05:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Thu, 31 Oct 2013 10:05:27 -0700 (PDT)
In-Reply-To: <CAJ7VayhABvPqSXi-KTFUG58GB9hCDL9mHNoLfX_RxO5JQxMkPQ@mail.gmail.com>
References: <CAJ7Vayh_TRCh8fCzafG9vbkD8Wu9rF_a0A-L=bV39tA2hv_8-w@mail.gmail.com>
	<CAMKF1sqkCKjY=hmOgNw9ezs3EuCXtenv+OVY1xP1FWKV_chq5A@mail.gmail.com>
	<CAJ7VayhABvPqSXi-KTFUG58GB9hCDL9mHNoLfX_RxO5JQxMkPQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Oct 2013 10:05:27 -0700
Message-ID: <CAMKF1srk3LG9V0atq+nYbvt8UipU9UUzrhN4mk64h26g0KrXbA@mail.gmail.com>
To: sonia verma <soniaverma9727@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 31 Oct 2013 17:05:59 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 31, 2013 at 9:56 AM, sonia verma <soniaverma9727@gmail.com> wrote:
> Hi Khem
>
> Actually I'm runninng JAVA based Opendaylight controller on powerpc
> architecture with zero ineterpreter mode and it takes about 10 min to start.
>

yes. I dont think there are much possibilities there. You can try
IBM's proprietary JRE J9 for ppc and see
if that works on FSL machine. That should get you performance

> On the another hand when I run it on x-86 machine,in hardly takes few
> seconds to start.

yes. because for x86 you are able to use hotspot JVM

>
> Board supporting java:
> java version "1.7.0_25"
> OpenJDK Runtime Environment (IcedTea 2.3.12) (25b30-2.3.12)
> OpenJDK Zero VM (build 23.7-b01, interpreted mode)
>
> Java -version at x-86 is as follows..
> java -version
> java version "1.7.0_25"
> OpenJDK Runtime Environment (IcedTea 2.3.10) (7u25-2.3.10-1ubuntu0.12.04.2)
> OpenJDK Server VM (build 23.7-b01, mixed mode)
>
> 2013-10-31 01:00:03.508 UTC [Start Level Event Dispatcher] INFO
> o.o.c.s.binding.impl.BrokerActivator - Binding Aware Broker initialized
> osgi> 2013-10-31 01:00:04.374 UTC [Start Level Event Dispatcher] INFO
> o.o.c.c.s.internal.
> ClusterManager - I'm a GossipRouter will listen on 1
> 2013-10-31 01:00:04.611 UTC [Start Level Event Dispatcher] INFO
> o.o.c.c.s.internal.ClusterManager - Started GossipRouter
> GossipRouter started at Thu Oct 31 01:00:04 UTC 2013
> Listening on port 12001 bound on address 0.0.0.0/0.0.0.0
> Backlog is 1000, linger timeout is 2000, and read timeout is 0
> 2013-10-31 01:00:04.612 UTC [Start Level Event Dispatcher] INFO
> o.o.c.c.s.internal.ClusterManager - Starting the ClusterManager
> 2013-10-31 01:00:13.639 UTC [Start Level Event Dispatcher] INFO
> o.o.c.c.i.ConfigurationService - ConfigurationService Manager init
> 2013-10-31 01:00:15.782 UTC [Start Level Event Dispatcher] INFO
> o.o.c.n.i.osgi.NetconfImplActivator - Starting TCP netconf server at
> /127.0.3
> Oct 31, 2013 1:00:17 AM org.apache.catalina.core.AprLifecycleListener init
> INFO: The APR based Apache Tomcat Native library which allows optimal
> performance in production environments was not found on the java.librarb
> Oct 31, 2013 1:00:22 AM org.apache.coyote.AbstractProtocol init
> INFO: Initializing ProtocolHandler ["http-bio-8080"]
> Oct 31, 2013 1:00:23 AM
> org.apache.catalina.mbeans.GlobalResourcesLifecycleListener createMBeans
> SEVERE: No global naming context defined for server
> Oct 31, 2013 1:00:23 AM org.apache.catalina.core.StandardService
> startInternal
> INFO: Starting service Catalina
> Oct 31, 2013 1:00:23 AM org.apache.catalina.core.StandardEngine
> startInternal
> INFO: Starting Servlet Engine: Apache Tomcat/7.0.32
> Oct 31, 2013 1:00:23 AM org.apache.coyote.AbstractProtocol start
> INFO: Starting ProtocolHandler ["http-bio-8080"]
> 2013-10-31 01:01:46.580 UTC [ConfigPersister-registrator] INFO
> o.o.c.n.p.i.ConfigPersisterNotificationHandler - Session id received from
> net1
> 2013-10-31 01:01:46.587 UTC [ConfigPersister-registrator] INFO
> o.o.c.n.p.i.ConfigPersisterNotificationHandler - No last config provided by
> b]
> Oct 31, 2013 1:02:08 AM org.apache.catalina.core.ApplicationContext log
> INFO: No Spring WebApplicationInitializer types detected on classpath
> Oct 31, 2013 1:02:09 AM org.apache.catalina.core.ApplicationContext log
> INFO: Initializing Spring FrameworkServlet 'Flows'
> Oct 31, 2013 1:02:35 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:02:35 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.northbound.commons.NorthboundApplication
> Oct 31, 2013 1:02:52 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:02:52 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.northbound.commons.NorthboundApplication
> Oct 31, 2013 1:03:22 AM org.apache.catalina.core.ApplicationContext log
> INFO: No Spring WebApplicationInitializer types detected on classpath
> Oct 31, 2013 1:03:23 AM org.apache.catalina.core.ApplicationContext log
> INFO: Initializing Spring FrameworkServlet 'RootGUI'
> Oct 31, 2013 1:03:44 AM org.apache.catalina.core.ApplicationContext log
> INFO: No Spring WebApplicationInitializer types detected on classpath
> Oct 31, 2013 1:03:44 AM org.apache.catalina.core.ApplicationContext log
> INFO: Initializing Spring FrameworkServlet 'Devices'
> Oct 31, 2013 1:04:01 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:04:01 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.northbound.commons.NorthboundApplication
> Oct 31, 2013 1:04:17 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:04:17 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.northbound.commons.NorthboundApplication
> Oct 31, 2013 1:04:38 AM org.apache.catalina.core.ApplicationContext log
> INFO: No Spring WebApplicationInitializer types detected on classpath
> Oct 31, 2013 1:04:38 AM org.apache.catalina.core.ApplicationContext log
> INFO: Initializing Spring FrameworkServlet 'Troubleshoot'
> Oct 31, 2013 1:04:48 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:04:48 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.networkconfig.neutron.northbound.NeutronNorthboundRSApplication
> Oct 31, 2013 1:05:05 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:05:05 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.northbound.commons.NorthboundApplication
> Oct 31, 2013 1:05:21 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:05:21 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.northbound.commons.NorthboundApplication
> Oct 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log
> INFO: No Spring WebApplicationInitializer types detected on classpath
> Oct 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log
> INFO: Initializing Spring FrameworkServlet 'Topology'
> 2013-10-31 01:05:48.392 UTC [Start Level Event Dispatcher] INFO
> o.o.c.s.t.provider.ToasterProvider - Provider Session initialized
> Oct 31, 2013 1:06:03 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:06:03 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.northbound.commons.NorthboundApplication
> 2013-10-31 01:06:06.154 UTC [ControllerI/O Thread] INFO
> o.o.c.p.o.core.internal.ControllerIO - Controller is now listening on
> any:6633
> 2013-10-31 01:06:07.050 UTC [ControllerI/O Thread] INFO
> o.o.c.p.o.core.internal.Controller - Switch:192.168.6.123:56750 is connected
> to the r
> Oct 31, 2013 1:06:07 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:06:07 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.containermanager.northbound.ContainerManagerNorthboundRSApplication
> 2013-10-31 01:06:10.563 UTC [ControllerI/O Thread] INFO
> o.o.c.p.o.core.internal.Controller - Switch:192.168.6.137:52815 is connected
> to the r
> 2013-10-31 01:06:12.369 UTC [pool-13-thread-1] INFO
> o.o.c.f.i.ForwardingRulesManager - Forwarding mode for node
> OF|00:00:00:04:9f:02:a3:e3 se
> 2013-10-31 01:06:12.371 UTC [pool-13-thread-1] WARN
> o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static flow:
> __Punt ARP__
> 2013-10-31 01:06:12.372 UTC [pool-13-thread-1] WARN
> o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static flow:
> __Punt LLDP__
> 2013-10-31 01:06:12.373 UTC [pool-13-thread-1] WARN
> o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static flow:
> __Catch-All D_
> 2013-10-31 01:06:12.753 UTC [fileinstall-./plugins] INFO
> o.o.c.s.l.i.LoadBalancerService - Running container name:default
> 2013-10-31 01:06:12.756 UTC [fileinstall-./plugins] INFO
> o.o.c.s.l.i.LoadBalancerService - ConfigManager [vips={}, pools={}]
> Oct 31, 2013 1:06:20 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:06:20 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.northbound.commons.NorthboundApplication
> Oct 31, 2013 1:06:27 AM
> com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
> INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
> PM'
> Oct 31, 2013 1:06:27 AM
> com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
> <init>
> INFO: Instantiated the Application class
> org.opendaylight.controller.northbound.commons.NorthboundApplication.
>
> I have read that enabling shark would speed up the process. Please help in
> tackling the above issue
>
>
> Thanks
>
>
>
>
> On Thu, Oct 31, 2013 at 9:56 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Thu, Oct 31, 2013 at 8:08 AM, sonia verma <soniaverma9727@gmail.com>
>> wrote:
>> > Hi ALL,
>> >
>> > I have integrated Java in one of the board having Powerpc architecture
>> > using
>> > meta-java. By default it cam with Zero port support which only works in
>> > interpreter mode.
>> >
>> > I need to enable Shark support in that. Can any one please help me with
>> > the
>> > procedure to compile JAVA with Shark support.
>>
>> zero is the best option you have. Shark wont work on ppc.
>>
>> >
>> > --
>> > Regards
>> >
>> > Sonia Verma
>> >
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>

